package rs.ftn.studenteaseteam.studentease.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
public class ObligationDTO {
    private Long id;
    private String title;
    private Date startDate;
    private Date endDate;
    private String description;
    private String subjectName;
    private String professorName;
    private String category;

    public ObligationDTO(Long id, String title, Date startDate, Date endDate, String description, String subjectName, String professorName, String category) {
        this.id = id;
        this.title = title;
        this.startDate = startDate;
        this.endDate = endDate;
        this.description = description;
        this.subjectName = subjectName;
        this.professorName = professorName;
        this.category = category;
    }
}
