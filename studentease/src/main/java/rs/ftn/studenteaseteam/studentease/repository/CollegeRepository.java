package rs.ftn.studenteaseteam.studentease.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rs.ftn.studenteaseteam.studentease.bean.College;

public interface CollegeRepository extends JpaRepository<College, Long> {
}
