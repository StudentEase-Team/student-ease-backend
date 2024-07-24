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

    @OneToOne(mappedBy="college")
    private Noticeboard noticeboard;

    @ManyToMany(mappedBy="college")
    @JsonIgnore
    private List<Student> students;

    @OneToMany(mappedBy="college", fetch = FetchType.EAGER)
    private List<Subject> subjects;
}