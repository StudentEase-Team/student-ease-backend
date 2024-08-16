package rs.ftn.studenteaseteam.studentease.bean;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import java.util.Collection;
import java.util.List;

@Entity
@Getter
@Setter
public class Student extends AbstractUser {

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "student_roles",
            joinColumns = @JoinColumn(name = "student_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id"))
    private List<Role> roles;

    @ManyToMany
    @JsonIgnore
    @JoinTable(name="student_subjects",
        joinColumns = @JoinColumn(name="student_id", referencedColumnName="id"),
        inverseJoinColumns = @JoinColumn(name="subject_id", referencedColumnName="id"))
    private List<Subject> subjects;

    @ManyToOne(fetch = FetchType.EAGER)
    private College college;

    private int year;

    public Student() {
        userRole = UserRole.STUDENT;
    }

    @Override
    public Collection<Role> getAuthorities() {
        return roles;
    }

    @OneToMany(mappedBy = "student")
    @JsonIgnore
    private List<Grade> grades;

    @OneToMany(mappedBy = "student")
    private List<Obligation> obligations;
}
