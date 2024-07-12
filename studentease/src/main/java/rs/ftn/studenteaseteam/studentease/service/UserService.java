package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.Admin;
import rs.ftn.studenteaseteam.studentease.bean.Professor;
import rs.ftn.studenteaseteam.studentease.bean.Student;
import rs.ftn.studenteaseteam.studentease.repository.AdminRepository;
import rs.ftn.studenteaseteam.studentease.repository.ProfessorRepository;
import rs.ftn.studenteaseteam.studentease.repository.StudentRepository;
import java.util.Optional;

@Service
public class UserService  implements UserDetailsService {

    private final AdminRepository adminRepository;
    private final ProfessorRepository professorRepository;
    private final StudentRepository studentRepository;

    @Autowired
    public UserService(AdminRepository adminRepository, ProfessorRepository professorRepository, StudentRepository studentRepository) {
        this.adminRepository = adminRepository;
        this.professorRepository = professorRepository;
        this.studentRepository = studentRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<Admin> potentialAdmin =  adminRepository.findAll().stream().filter(a -> a.getUsername().equals(username)).findFirst();
        if (potentialAdmin.isPresent())
            return (UserDetails) potentialAdmin.get();

        Optional<Professor> potentialProfessor = professorRepository.findAll().stream().filter(p -> p.getUsername().equals(username)).findFirst();
        if (potentialProfessor.isPresent())
            return (UserDetails) potentialProfessor.get();

        Optional<Student> potentialStudent = studentRepository.findAll().stream().filter(s -> s.getUsername().equals(username)).findFirst();
        if (potentialStudent.isPresent())
            return (UserDetails) potentialStudent.get();

        throw new UsernameNotFoundException("User not found");
    }
}
