package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthService {
    private final AdminService adminService;
    private final StudentService studentService;
    private final ProfessorService professorService;

    @Autowired
    public AuthService(AdminService adminService, StudentService studentService, ProfessorService professorService) {
        this.adminService = adminService;
        this.studentService = studentService;
        this.professorService = professorService;
    }


}
