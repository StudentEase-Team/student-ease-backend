package rs.ftn.studenteaseteam.studentease.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import rs.ftn.studenteaseteam.studentease.bean.Subject;
import rs.ftn.studenteaseteam.studentease.dto.SubjectGradeDTO;
import rs.ftn.studenteaseteam.studentease.service.SubjectService;

import java.util.List;

@RestController
public class SubjectController {
    private final SubjectService subjectService;

    @Autowired
    public SubjectController(SubjectService subjectService) { this.subjectService = subjectService; }

    @GetMapping("/api/subjects/passed/{year}")
    public ResponseEntity<List<SubjectGradeDTO>> getPassedSubjects(@PathVariable String year) {
        return subjectService.getPassedSubjectsByYear(year);
    }

    @GetMapping("/api/subjects/failed/{year}")
    public ResponseEntity<List<SubjectGradeDTO>> getFailedSubjects(@PathVariable String year) {
        return subjectService.getFailedSubjectsByYear(year);
    }
}
