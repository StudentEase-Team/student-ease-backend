package rs.ftn.studenteaseteam.studentease.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import rs.ftn.studenteaseteam.studentease.dto.LoginRequestDTO;
import rs.ftn.studenteaseteam.studentease.service.AuthService;
import rs.ftn.studenteaseteam.studentease.token.AccessToken;

@RestController
public class AuthController {

    private final AuthService authService;

    @Autowired
    public AuthController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping("/login")
    public ResponseEntity<AccessToken> login(@RequestBody LoginRequestDTO dto) {
        return authService.login(dto);
    }
}
