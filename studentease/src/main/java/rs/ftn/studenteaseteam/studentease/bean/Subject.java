package rs.ftn.studenteaseteam.studentease.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Subject {

    @Id
    private Long id;
    private String name;

    @OneToMany
    private List<NoticeboardItem> noticeboardItems;

    @ManyToMany(mappedBy="subjects")
    private List<Student> students;
}
