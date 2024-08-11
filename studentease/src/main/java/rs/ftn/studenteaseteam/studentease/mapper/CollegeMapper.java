package rs.ftn.studenteaseteam.studentease.mapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import rs.ftn.studenteaseteam.studentease.bean.College;
import rs.ftn.studenteaseteam.studentease.bean.Subject;
import rs.ftn.studenteaseteam.studentease.dto.CollegeDTO;
import rs.ftn.studenteaseteam.studentease.dto.SubjectDTO;

import java.util.ArrayList;

@Component
public class CollegeMapper {
    private final SubjectMapper subjectMapper;

    @Autowired
    public CollegeMapper(SubjectMapper subjectMapper) {
        this.subjectMapper = subjectMapper;
    }

    public CollegeDTO mapIncomingObjectToDTO(College college) {
        CollegeDTO collegeDTO = new CollegeDTO();
        collegeDTO.setId(college.getId());
        collegeDTO.setName(college.getName());
        collegeDTO.setAbbreviation(college.getAbbreviation());
        collegeDTO.setSubjects(new ArrayList<>());
        if(college.getSubjects() == null) {
            collegeDTO.setSubjects(new ArrayList<>());
        }
        for(Subject subject : college.getSubjects()) {
            SubjectDTO subjectDTO = subjectMapper.mapIncomingObjectToDTO(subject);
            collegeDTO.getSubjects().add(subjectDTO);
        }
        return collegeDTO;
    }
}
