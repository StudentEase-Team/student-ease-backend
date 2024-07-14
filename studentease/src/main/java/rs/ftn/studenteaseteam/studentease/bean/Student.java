package rs.ftn.studenteaseteam.studentease.bean;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

@Entity
@Getter
@Setter
public class Student extends AbstractUser {

    @Id
    @GeneratedValue
    public UUID id;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "student_roles",
            joinColumns = @JoinColumn(name = "student_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id"))
    private List<Role> roles;

    @ManyToMany
    @JoinTable(name="student_subjects",
        joinColumns = @JoinColumn(name="student_id", referencedColumnName="id"),
        inverseJoinColumns = @JoinColumn(name="subject_id", referencedColumnName="id"))
    private List<Subject> subjects;

    public Student() {
        userRole = UserRole.STUDENT;
    }

    @Override
    public Collection<Role> getAuthorities() {
        return roles;
    }
}
