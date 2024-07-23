package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.Subject;
import rs.ftn.studenteaseteam.studentease.repository.SubjectRepository;

import java.util.List;
import java.util.Optional;

@Service
public class SubjectService {

    private SubjectRepository subjectRepository;

    @Autowired
    public SubjectService(SubjectRepository subjectRepository) {
        this.subjectRepository = subjectRepository;
    }

    public Optional<Subject> getById(long id) {
        return subjectRepository.findById(id);
    }
    public List<Subject> getAll() { return subjectRepository.findAll(); }
    public Subject save(Subject subject) { return subjectRepository.save(subject); }
}