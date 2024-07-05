package rs.ftn.studenteaseteam.studentease.bean;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import org.springframework.security.core.userdetails.UserDetails;
import java.time.LocalDateTime;

@MappedSuperclass
public abstract class AbstractUser implements UserDetails {

    protected enum UserRole {
        STUDENT,
        PROFESSOR,
        ADMIN
    }

    protected String email;
    @JsonIgnore
    protected String password;
    @JsonIgnore
    protected UserRole userRole;
    protected String firstName;
    protected String lastName;
    protected String phone;
    @JsonIgnore
    @Getter
    protected LocalDateTime credentialsUpdatedAt;
    @JsonIgnore
    protected Boolean isEnabled;
    @JsonIgnore
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
