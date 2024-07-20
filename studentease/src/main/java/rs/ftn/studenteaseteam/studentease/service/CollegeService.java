package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.College;
import rs.ftn.studenteaseteam.studentease.repository.CollegeRepository;

import java.util.List;
import java.util.Optional;

@Service
public class CollegeService {
    private CollegeRepository collegeRepository;

    @Autowired
    public CollegeService(CollegeRepository collegeRepository) { this.collegeRepository = collegeRepository; }

    public Optional<College> get(Long id) { return collegeRepository.findById(id); }

    public List<College> getAll() { return collegeRepository.findAll(); }

    public College save(College college) { return collegeRepository.save(college); }
}
