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

    @OneToMany(mappedBy="subject", fetch = FetchType.EAGER)
    private List<Material> materials;

    @ManyToOne(fetch = FetchType.EAGER)
    private Professor professor;

    @OneToMany(mappedBy = "subject")
    private List<Obligation> obligations;

    public Subject(Long id, String name, List<NoticeboardItem> noticeboardItems, List<Student> students, int year, College college, List<Grade> grades, List<Material> materials, Professor professor, List<Obligation> obligations) {
        this.id = id;
        this.name = name;
        this.noticeboardItems = noticeboardItems;
        this.students = students;
        this.year = year;
        this.college = college;
        this.grades = grades;
        this.materials = materials;
        this.professor = professor;
        this.obligations = obligations;
    }
}
