package rs.ftn.studenteaseteam.studentease.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import rs.ftn.studenteaseteam.studentease.bean.Material;

import java.util.ArrayList;

@Repository
public interface MaterialRepository extends JpaRepository<Material, Long> {
    ArrayList<Material> findBySubjectId(Long id);
}
