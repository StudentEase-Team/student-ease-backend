package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.College;
import rs.ftn.studenteaseteam.studentease.dto.CollegeDTO;
import rs.ftn.studenteaseteam.studentease.mapper.CollegeMapper;
import rs.ftn.studenteaseteam.studentease.repository.CollegeRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class CollegeService {
    private final CollegeRepository collegeRepository;
    private final CollegeMapper collegeMapper;

    @Autowired
    public CollegeService(CollegeRepository collegeRepository, CollegeMapper collegeMapper) {
        this.collegeRepository = collegeRepository;
        this.collegeMapper = collegeMapper;
    }

    public Optional<College> getById(Long id) { return collegeRepository.findById(id); }

    public College getByName(String name) { return collegeRepository.findByName(name); }

    public List<CollegeDTO> getAllColleges() {
        ArrayList<CollegeDTO> collegeDTOs = new ArrayList<>();
        for(College college : collegeRepository.findAll()) {
            collegeDTOs.add(collegeMapper.mapIncomingObjectToDTO(college));
        }
        if(collegeDTOs.isEmpty()) {
            return null;
        }
        return collegeDTOs;
    }

}
