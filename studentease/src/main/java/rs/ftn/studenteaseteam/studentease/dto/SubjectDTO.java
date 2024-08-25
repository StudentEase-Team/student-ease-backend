package rs.ftn.studenteaseteam.studentease.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class SubjectDTO {
    private Long id;
    private String name;
    private String professorName;
    private String collegeName;

    public SubjectDTO(Long id, String name, String professorName, String collegeName) {
        this.id = id;
        this.name = name;
        this.professorName = professorName;
        this.collegeName = collegeName;
    }
}
