package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.*;
import rs.ftn.studenteaseteam.studentease.dto.SubjectDTO;
import rs.ftn.studenteaseteam.studentease.dto.SubjectGradeDTO;
import rs.ftn.studenteaseteam.studentease.mapper.SubjectMapper;
import rs.ftn.studenteaseteam.studentease.repository.SubjectRepository;

import java.util.*;

@Service
public class SubjectService {

    private final SubjectRepository subjectRepository;
    private final SubjectMapper mapper;

    @Autowired
    public SubjectService(SubjectRepository subjectRepository, SubjectMapper mapper) {
        this.subjectRepository = subjectRepository;
        this.mapper = mapper;
    }

    public Optional<Subject> getById(long id) {
        return subjectRepository.findById(id);
    }

    public List<SubjectDTO> getByProfessor() {
        Professor currentProfessor = (Professor) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<Subject> subjects = subjectRepository.findByProfessorId(currentProfessor.getId());
        List<SubjectDTO> subjectsDto = new ArrayList<>();
        for(Subject s : subjects)
        {
            subjectsDto.add(mapper.mapIncomingObjectToDTO(s));
        }

        if(subjectsDto.isEmpty())
            return null;

        return subjectsDto;
    }

    public List<SubjectGradeDTO> getPassedSubjectsByYear(String year) {
        ArrayList<SubjectGradeDTO> passedSubjects = new ArrayList<>();
        Student currentStudent = (Student) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        for(Subject s : subjectRepository.findAll())
        {
            if(s.getGrades() != null)
                for(Grade g : s.getGrades())
                    if(g.getStudent() != null && g.getStudent().getId().equals(currentStudent.getId()) && (year.equals("all") || s.getYear() == Integer.parseInt(year)))
                        passedSubjects.add(new SubjectGradeDTO(s.getId(), s.getName(), g.getValue(), g.getDate()));
        }
        if(passedSubjects.isEmpty())
            return null;
        return passedSubjects;
    }

    public List<SubjectGradeDTO> getFailedSubjectsByYear(String year) {
        ArrayList<SubjectGradeDTO> failedSubjects = new ArrayList<>();
        Student currentStudent = (Student) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        for(Subject s : subjectRepository.findAll())
        {
            if(s.getGrades() != null) {
                boolean found = false;
                for (Grade g : s.getGrades()) {
                    if (g.getStudent() != null && g.getStudent().getId().equals(currentStudent.getId()) && (year.equals("all") || s.getYear() == Integer.parseInt(year))) {
                        found = true;
                        break;
                    }
                }
                if(!found)
                        if(s.getCollege().getId() == currentStudent.getCollege().getId() && (year.equals("all") || s.getYear() == Integer.parseInt(year)))
                            failedSubjects.add(new SubjectGradeDTO(s.getId(), s.getName(), -1, new Date()));
            }
        }
        if(failedSubjects.isEmpty())
            return null;
        return failedSubjects;
    }
}