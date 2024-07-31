package rs.ftn.studenteaseteam.studentease.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import rs.ftn.studenteaseteam.studentease.bean.Noticeboard;

@Repository
public interface NoticeboardRepository extends JpaRepository<Noticeboard, Long> {
}
