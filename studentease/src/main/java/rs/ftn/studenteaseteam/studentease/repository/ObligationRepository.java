package rs.ftn.studenteaseteam.studentease.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import rs.ftn.studenteaseteam.studentease.bean.Obligation;

import java.util.List;
import java.util.UUID;

@Repository
public interface ObligationRepository extends JpaRepository<Obligation, Long> {
    List<Obligation> findByStudentId(UUID studentId);
    List<Obligation> findByProfessorId(UUID professorId);
    List<Obligation> findBySubjectId(Long subjectId);
}
