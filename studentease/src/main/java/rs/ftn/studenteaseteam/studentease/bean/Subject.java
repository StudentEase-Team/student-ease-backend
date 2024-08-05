package rs.ftn.studenteaseteam.studentease.bean;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
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
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    @OneToMany
    @JsonIgnore
    private List<NoticeboardItem> noticeboardItems;

    @ManyToMany(mappedBy="subjects", fetch = FetchType.EAGER)
    @JsonIgnore
    private List<Student> students;

    private int year;

    @ManyToOne
    @JoinColumn(name="college_id")
    @JsonIgnore
    private College college;

    @OneToMany(mappedBy="subject", fetch = FetchType.EAGER)
    private List<Grade> grades;
}
