package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.Role;
import rs.ftn.studenteaseteam.studentease.repository.RoleRepository;

@Service
public class RoleService {
    private final RoleRepository roleRepository;

    @Autowired
    public RoleService(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    public Role findByName(String name) {
        return roleRepository.findByName(name);
    }
}
