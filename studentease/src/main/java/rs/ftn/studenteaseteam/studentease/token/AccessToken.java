package rs.ftn.studenteaseteam.studentease.token;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
public class AccessToken {

    private String accessToken;
    private int expiresIn;
    private LocalDateTime createdAt;

    public AccessToken(String accessToken, int expiresIn) {
        this.accessToken = accessToken;
        this.expiresIn = expiresIn;
        createdAt = LocalDateTime.now();
    }
}