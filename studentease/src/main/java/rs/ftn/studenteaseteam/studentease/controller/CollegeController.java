package rs.ftn.studenteaseteam.studentease.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import rs.ftn.studenteaseteam.studentease.dto.CollegeDTO;
import rs.ftn.studenteaseteam.studentease.service.CollegeService;
import rs.ftn.studenteaseteam.studentease.service.ResponseEntityService;

import java.util.List;

@RestController
public class CollegeController {
    private final CollegeService collegeService;
    private final ResponseEntityService responseEntityService;

    @Autowired
    public CollegeController(CollegeService collegeService, ResponseEntityService responseEntityService) {
        this.collegeService = collegeService;
        this.responseEntityService = responseEntityService;
    }

    @GetMapping("/api/college")
    public ResponseEntity<List<CollegeDTO>> getAllColleges() {
        return responseEntityService.getResponse(collegeService.getAllColleges());
    }
}
