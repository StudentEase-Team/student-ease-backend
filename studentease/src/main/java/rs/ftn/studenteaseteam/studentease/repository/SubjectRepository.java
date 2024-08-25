package rs.ftn.studenteaseteam.studentease.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rs.ftn.studenteaseteam.studentease.bean.Subject;

import java.util.List;
import java.util.UUID;

public interface SubjectRepository extends JpaRepository<Subject, Long> {
    List<Subject> findByProfessorId(UUID professorId);
}
