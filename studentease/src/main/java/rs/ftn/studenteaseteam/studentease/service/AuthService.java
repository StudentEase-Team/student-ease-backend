package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.AbstractUser;
import rs.ftn.studenteaseteam.studentease.dto.LoginRequestDTO;
import rs.ftn.studenteaseteam.studentease.dto.UserStateDTO;
import rs.ftn.studenteaseteam.studentease.token.AccessToken;
import rs.ftn.studenteaseteam.studentease.util.TokenUtils;

@Service
public class AuthService {

    private final TokenUtils tokenUtils;
    private final AuthenticationManager authenticationManager;

    @Autowired
    public AuthService(TokenUtils tokenUtils, AuthenticationManager authenticationManager) {
        this.tokenUtils = tokenUtils;
        this.authenticationManager = authenticationManager;
    }

    public ResponseEntity<AbstractUser> getCurrentUser() {
        return new  ResponseEntity<AbstractUser>((AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal(), HttpStatus.OK);
    }

    public ResponseEntity<UserStateDTO> login(LoginRequestDTO dto) {
        try {
            Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(
                    dto.getEmail(), dto.getPassword()));
            SecurityContextHolder.getContext().setAuthentication(authentication);
            AbstractUser user = (AbstractUser) authentication.getPrincipal();
            AccessToken tokenState = new AccessToken(tokenUtils.generateToken(user.getUsername(), dto.getPlatform()), tokenUtils.getExpiredIn(dto.getPlatform()));
            return new ResponseEntity<>(new UserStateDTO(tokenState, user.getUserRole()), HttpStatus.OK);
        }
        catch (BadCredentialsException e) {
            return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
        }
    }

    public ResponseEntity<String> whoAmI()
    {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || !authentication.isAuthenticated()) {
            return new ResponseEntity<>("Not logged in!", HttpStatus.OK);
        }

        AbstractUser user = (AbstractUser) authentication.getPrincipal();
        return new ResponseEntity<>("Role: [" + user.getUserRole() + "] \nEmail: [" + user.getEmail() + "] \nID: [" + user.getId() + "]", HttpStatus.OK);

    }
}