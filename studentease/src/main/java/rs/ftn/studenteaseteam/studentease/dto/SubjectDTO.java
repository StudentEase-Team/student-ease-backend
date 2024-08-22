package rs.ftn.studenteaseteam.studentease.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import rs.ftn.studenteaseteam.studentease.bean.College;
import rs.ftn.studenteaseteam.studentease.bean.NoticeboardItem;
import rs.ftn.studenteaseteam.studentease.bean.Student;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class SubjectDTO {
    private Long id;
    private String name;
    private String professorName;
    private String collegeName;
}
