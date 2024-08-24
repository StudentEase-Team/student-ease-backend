package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.Admin;
import rs.ftn.studenteaseteam.studentease.repository.AdminRepository;
import java.util.Optional;
import java.util.UUID;

@Service
public class AdminService {
    private final AdminRepository adminRepository;

    @Autowired
    public AdminService(AdminRepository adminRepository) {
        this.adminRepository = adminRepository;
    }

    public Optional<Admin> getById(UUID id) {
        return adminRepository.findById(id);
    }
}
