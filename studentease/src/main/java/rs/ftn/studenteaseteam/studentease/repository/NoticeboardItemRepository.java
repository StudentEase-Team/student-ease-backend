package rs.ftn.studenteaseteam.studentease.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import rs.ftn.studenteaseteam.studentease.bean.NoticeboardItem;

@Repository
public interface NoticeboardItemRepository extends JpaRepository<NoticeboardItem, Long> {
}
