package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.AbstractUser;
import rs.ftn.studenteaseteam.studentease.bean.Professor;
import rs.ftn.studenteaseteam.studentease.bean.Role;
import rs.ftn.studenteaseteam.studentease.bean.Student;
import rs.ftn.studenteaseteam.studentease.dto.LoginRequestDTO;
import rs.ftn.studenteaseteam.studentease.dto.RegistrationRequestDTO;
import rs.ftn.studenteaseteam.studentease.dto.UserStateDTO;
import rs.ftn.studenteaseteam.studentease.mapper.RegistrationRequestMapper;
import rs.ftn.studenteaseteam.studentease.repository.RoleRepository;
import rs.ftn.studenteaseteam.studentease.token.AccessToken;
import rs.ftn.studenteaseteam.studentease.util.TokenUtils;

import java.time.LocalDateTime;
import java.util.ArrayList;

@Service
public class AuthService {

    private final TokenUtils tokenUtils;
    private final AuthenticationManager authenticationManager;
    private final RegistrationRequestMapper registrationMapper;
    private final ProfessorService professorService;
    private final RoleRepository roleRepository;
    private final StudentService studentService;
    private final PasswordEncoder passwordEncoder;
    private final CollegeService collegeService;

    @Autowired
    public AuthService(TokenUtils tokenUtils, AuthenticationManager authenticationManager, RegistrationRequestMapper registrationMapper, ProfessorService professorService, RoleRepository roleRepository, StudentService studentService, PasswordEncoder passwordEncoder, CollegeService collegeService) {
        this.tokenUtils = tokenUtils;
        this.authenticationManager = authenticationManager;
        this.registrationMapper = registrationMapper;
        this.professorService = professorService;
        this.roleRepository = roleRepository;
        this.studentService = studentService;
        this.passwordEncoder = passwordEncoder;
        this.collegeService = collegeService;
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

    public ResponseEntity<Boolean> register(RegistrationRequestDTO dto) {
        ArrayList<Role> selectedRole = new ArrayList<>();
        try {
            if(dto.getUserRole().equals("PROFESSOR")) {
                selectedRole.add(roleRepository.findByName("ROLE_PROFESSOR"));
                Professor newProfessor = registrationMapper.mapIncomingDTOToProfessor(dto);
                newProfessor.setRoles(selectedRole);
                newProfessor.setPassword(passwordEncoder.encode(newProfessor.getPassword()));
                newProfessor.setCredentialsUpdatedAt(LocalDateTime.now());
                newProfessor.setIsEnabled(true);
                newProfessor.setIsLocked(false);
                newProfessor.setCollege(collegeService.getByName(dto.getCollegeName()));
                professorService.save(newProfessor);
                return new ResponseEntity<>(true, HttpStatus.OK);
            }
            else if(dto.getUserRole().equals("STUDENT")) {
                selectedRole.add(roleRepository.findByName("ROLE_STUDENT"));
                Student newStudent = registrationMapper.mapIncomingDTOToStudent(dto);
                newStudent.setRoles(selectedRole);
                newStudent.setPassword(passwordEncoder.encode(newStudent.getPassword()));
                newStudent.setCredentialsUpdatedAt(LocalDateTime.now());
                newStudent.setIsEnabled(true);
                newStudent.setIsLocked(false);
                newStudent.setCollege(collegeService.getByName(dto.getCollegeName()));
                newStudent.setYear(1);
                studentService.save(newStudent);
                return new ResponseEntity<>(true, HttpStatus.OK);
            }
            else {
                return new ResponseEntity<>(false, HttpStatus.NOT_FOUND);
            }
        }
        catch (Exception e) {
            return new ResponseEntity<>(false, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    public ResponseEntity<String> whoAmI() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || !authentication.isAuthenticated()) {
            return new ResponseEntity<>("Not logged in!", HttpStatus.OK);
        }

        AbstractUser user = (AbstractUser) authentication.getPrincipal();
        return new ResponseEntity<>("Role: [" + user.getUserRole() + "] \nEmail: [" + user.getEmail() + "] \nID: [" + user.getId() + "]", HttpStatus.OK);

    }
}