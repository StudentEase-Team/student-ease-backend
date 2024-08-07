package rs.ftn.studenteaseteam.studentease.bean;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Entity
@Getter
@Setter
public class College {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String abbreviation;
    private String address;
    private String phoneNumber;
    private String email;

    @OneToMany(mappedBy="college", fetch=FetchType.EAGER)
    @JsonIgnore
    private List<Student> students;

    @OneToMany(mappedBy="college", fetch=FetchType.EAGER)
    @JsonIgnore
    private List<Professor> professors;

    @OneToMany(mappedBy="college", fetch = FetchType.EAGER)
    private List<Subject> subjects;

    @OneToMany
    @JsonIgnore
    private List<NoticeboardItem> noticeboardItems;
}