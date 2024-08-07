package rs.ftn.studenteaseteam.studentease.mapper;

import org.springframework.stereotype.Component;
import rs.ftn.studenteaseteam.studentease.bean.Professor;
import rs.ftn.studenteaseteam.studentease.bean.Student;
import rs.ftn.studenteaseteam.studentease.dto.RegistrationRequestDTO;

@Component
public class RegistrationRequestMapper {
    public Student mapIncomingDTOToStudent(RegistrationRequestDTO dto) {
        Student student = new Student();
        student.setEmail(dto.getEmail());
        student.setFirstName(dto.getFirstName());
        student.setLastName(dto.getLastName());
        student.setPassword(dto.getPassword());
        student.setPhone(dto.getPhone());

        return student;
    }

    public Professor mapIncomingDTOToProfessor(RegistrationRequestDTO dto) {
        Professor professor = new Professor();
        professor.setEmail(dto.getEmail());
        professor.setFirstName(dto.getFirstName());
        professor.setLastName(dto.getLastName());
        professor.setPassword(dto.getPassword());
        professor.setPhone(dto.getPhone());

        return professor;
    }
}
