package rs.ftn.studenteaseteam.studentease.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
public class SubjectGradeDTO {
    private String subjectName;
    private int grade;
    private Date date;

    public SubjectGradeDTO(String subjectName, int grade, Date date) {
        this.subjectName = subjectName;
        this.grade = grade;
        this.date = date;
    }
}
