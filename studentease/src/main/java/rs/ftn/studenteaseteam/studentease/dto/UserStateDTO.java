package rs.ftn.studenteaseteam.studentease.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import rs.ftn.studenteaseteam.studentease.bean.AbstractUser;
import rs.ftn.studenteaseteam.studentease.token.AccessToken;

@Getter
@Setter
@NoArgsConstructor
public class UserStateDTO {
    AccessToken token;
    AbstractUser.UserRole role;

    public UserStateDTO(AccessToken token, AbstractUser.UserRole role) {
        this.token = token;
        this.role = role;
    }
}
