package rs.ftn.studenteaseteam.studentease.dto;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import rs.ftn.studenteaseteam.studentease.bean.Student;
import rs.ftn.studenteaseteam.studentease.bean.Subject;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class CollegeDTO {
    @Id
    private Long id;
    private String name;
    private String abbreviation;
    //private List<Student> students;
    private List<SubjectDTO> subjects;
}
