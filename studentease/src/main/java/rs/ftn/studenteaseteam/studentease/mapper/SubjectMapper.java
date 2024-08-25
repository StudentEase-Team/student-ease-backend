package rs.ftn.studenteaseteam.studentease.mapper;

import org.springframework.stereotype.Component;
import rs.ftn.studenteaseteam.studentease.bean.Subject;
import rs.ftn.studenteaseteam.studentease.dto.SubjectDTO;

@Component
public class SubjectMapper {
    public SubjectDTO mapIncomingObjectToDTO(Subject subject) {
        SubjectDTO subjectDTO = new SubjectDTO();
        subjectDTO.setId(subject.getId());
        subjectDTO.setName(subject.getName());
        subjectDTO.setCollegeName(subject.getCollege().getName());
        subjectDTO.setProfessorName(subject.getProfessor().getFirstName() + " " + subject.getProfessor().getLastName());
        return subjectDTO;
    }
}
