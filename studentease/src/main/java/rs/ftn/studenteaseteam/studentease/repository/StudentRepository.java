package rs.ftn.studenteaseteam.studentease.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import rs.ftn.studenteaseteam.studentease.bean.Student;
import java.util.UUID;

@Repository
public interface StudentRepository extends JpaRepository<Student, UUID> {
}
