package rs.ftn.studenteaseteam.studentease.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class RegistrationRequestDTO {
    private String email;
    private String password;
    private String userRole;
    private String firstName;
    private String lastName;
    private String phone;
    private String collegeName;
}
