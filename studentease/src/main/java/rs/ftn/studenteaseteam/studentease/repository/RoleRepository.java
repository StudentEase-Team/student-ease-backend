package rs.ftn.studenteaseteam.studentease.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import rs.ftn.studenteaseteam.studentease.bean.Role;


@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName(String name);
}