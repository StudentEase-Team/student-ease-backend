package rs.ftn.studenteaseteam.studentease.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
public class SubjectGradeDTO {
    private long id;
    private String subjectName;
    private int grade;
    private Date date;

    public SubjectGradeDTO(long id, String subjectName, int grade, Date date) {
        this.id = id;
        this.subjectName = subjectName;
        this.grade = grade;
        this.date = date;
    }
}
