package rs.ftn.studenteaseteam.studentease.bean;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.userdetails.UserDetails;
import java.time.LocalDateTime;
import java.util.UUID;

@MappedSuperclass
@Getter
@Setter
public abstract class AbstractUser implements UserDetails {
    @Id
    @GeneratedValue
    private UUID id;

    public enum UserRole {
        STUDENT,
        PROFESSOR,
        ADMIN
    }

    private String email;
    private String password;
    public UserRole userRole;
    private String firstName;
    private String lastName;
    private String phone;
    private LocalDateTime credentialsUpdatedAt;
    private Boolean isEnabled;
    private Boolean isLocked;

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return !isLocked;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        //Todo, terati korisnika da menja sifru
        return true;
    }

    @Override
    public boolean isEnabled() {
        return isEnabled;
    }
}
