package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.Professor;
import rs.ftn.studenteaseteam.studentease.repository.ProfessorRepository;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class ProfessorService {
    private final ProfessorRepository professorRepository;

    @Autowired
    public ProfessorService(ProfessorRepository professorRepository) {
        this.professorRepository = professorRepository;
    }

    public Optional<Professor> get(UUID id) {
        return professorRepository.findById(id);
    }

    public List<Professor> getAll() {
        return professorRepository.findAll();
    }

    public Professor save(Professor professor) {
        return professorRepository.save(professor);
    }
}
