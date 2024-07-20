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
    private Long id;
    private String name;
    private String abbreviation;

    @OneToOne(mappedBy="college")
    private Noticeboard noticeboard;

    @ManyToMany(mappedBy="college")
    @JsonIgnore
    private List<Student> students;

    @OneToMany(mappedBy="college", fetch = FetchType.EAGER)
    private List<Subject> subjects;
}