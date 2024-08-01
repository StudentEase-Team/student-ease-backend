package rs.ftn.studenteaseteam.studentease.bean;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import org.springframework.security.core.userdetails.UserDetails;
import java.time.LocalDateTime;
import java.util.UUID;

@MappedSuperclass
@Getter
public abstract class AbstractUser implements UserDetails {
    @Id
    @GeneratedValue
    public UUID id;

    public enum UserRole {
        STUDENT,
        PROFESSOR,
        ADMIN
    }

    protected String email;
    protected String password;
    protected UserRole userRole;
    protected String firstName;
    protected String lastName;
    protected String phone;
    protected LocalDateTime credentialsUpdatedAt;
    protected Boolean isEnabled;
    protected Boolean isLocked;

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
