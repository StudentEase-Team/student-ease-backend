package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.*;
import rs.ftn.studenteaseteam.studentease.dto.SubjectGradeDTO;
import rs.ftn.studenteaseteam.studentease.repository.SubjectRepository;

import java.util.*;

@Service
public class SubjectService {

    private final SubjectRepository subjectRepository;

    @Autowired
    public SubjectService(SubjectRepository subjectRepository) {
        this.subjectRepository = subjectRepository;
    }

    public Optional<Subject> getById(long id) {
        return subjectRepository.findById(id);
    }
    public List<Subject> getAll() { return subjectRepository.findAll(); }
    public Subject save(Subject subject) { return subjectRepository.save(subject); }

    public List<SubjectGradeDTO> getPassedSubjectsByYear(String year) {
        ArrayList<SubjectGradeDTO> passedSubjects = new ArrayList<>();
        Student currentStudent = (Student) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        for(Subject s : getAll())
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
        for(Subject s : getAll())
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