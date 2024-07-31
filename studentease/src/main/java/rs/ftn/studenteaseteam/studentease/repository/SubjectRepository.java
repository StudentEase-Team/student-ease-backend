package rs.ftn.studenteaseteam.studentease.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rs.ftn.studenteaseteam.studentease.bean.Subject;

public interface SubjectRepository extends JpaRepository<Subject, Long> {
}
