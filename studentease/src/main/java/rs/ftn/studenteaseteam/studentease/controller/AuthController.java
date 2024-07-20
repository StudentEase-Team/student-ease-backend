package rs.ftn.studenteaseteam.studentease.controller;

import jakarta.annotation.security.PermitAll;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import rs.ftn.studenteaseteam.studentease.dto.LoginRequestDTO;
import rs.ftn.studenteaseteam.studentease.dto.UserStateDTO;
import rs.ftn.studenteaseteam.studentease.service.AuthService;

@RestController
public class AuthController {

    private final AuthService authService;

    @Autowired
    public AuthController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping("/api/login")
    @PermitAll
    public ResponseEntity<UserStateDTO> login(@RequestBody LoginRequestDTO dto) {
        return authService.login(dto);
    }
}
