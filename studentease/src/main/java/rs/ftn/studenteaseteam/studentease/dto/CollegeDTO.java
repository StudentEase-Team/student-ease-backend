package rs.ftn.studenteaseteam.studentease.dto;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class CollegeDTO {
    @Id
    private Long id;
    private String name;
    private String abbreviation;
    private String address;
    private String email;
    private String phoneNumber;
    //private List<Student> students;
    private List<SubjectDTO> subjects;
}
