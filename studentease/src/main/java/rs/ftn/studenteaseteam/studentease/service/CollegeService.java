package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.College;
import rs.ftn.studenteaseteam.studentease.repository.CollegeRepository;

import java.util.List;
import java.util.Optional;

@Service
public class CollegeService {
    private final CollegeRepository collegeRepository;

    @Autowired
    public CollegeService(CollegeRepository collegeRepository) { this.collegeRepository = collegeRepository; }

    public Optional<College> getById(Long id) { return collegeRepository.findById(id); }

    public College getByName(String name) { return collegeRepository.findByName(name); }

    public List<College> getAll() { return collegeRepository.findAll(); }

    public College save(College college) { return collegeRepository.save(college); }
}
