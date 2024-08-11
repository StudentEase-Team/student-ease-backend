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
public class Professor extends AbstractUser {

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "professor_roles",
            joinColumns = @JoinColumn(name = "professor_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id"))
    private List<Role> roles;

    @ManyToOne(fetch = FetchType.EAGER)
    private College college;

    @OneToMany(mappedBy = "professor", fetch = FetchType.EAGER)
    private List<Subject> subjects;

    public Professor(){
        userRole = UserRole.PROFESSOR;
    }

    @Override
    public Collection<Role> getAuthorities() {
        return roles;
    }
}
