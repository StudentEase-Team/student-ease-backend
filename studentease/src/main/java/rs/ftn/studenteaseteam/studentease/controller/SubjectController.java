package rs.ftn.studenteaseteam.studentease.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import rs.ftn.studenteaseteam.studentease.dto.SubjectDTO;
import rs.ftn.studenteaseteam.studentease.dto.SubjectGradeDTO;
import rs.ftn.studenteaseteam.studentease.service.ResponseEntityService;
import rs.ftn.studenteaseteam.studentease.service.SubjectService;

import java.util.List;

@RestController
public class SubjectController {
    private final SubjectService subjectService;
    private final ResponseEntityService responseEntityService;

    @Autowired
    public SubjectController(SubjectService subjectService, ResponseEntityService responseEntityService) {
        this.subjectService = subjectService;
        this.responseEntityService = responseEntityService;
    }

    @GetMapping("/api/subjects/professor")
    public ResponseEntity<List<SubjectDTO>> getSubjectsByProfessor() {
        return responseEntityService.getResponse(subjectService.getByProfessor());
    }

    @GetMapping("/api/subjects/passed/{year}")
    public ResponseEntity<List<SubjectGradeDTO>> getPassedSubjects(@PathVariable String year) {
        return responseEntityService.getResponse(subjectService.getPassedSubjectsByYear(year));
    }

    @GetMapping("/api/subjects/failed/{year}")
    public ResponseEntity<List<SubjectGradeDTO>> getFailedSubjects(@PathVariable String year) {
        return responseEntityService.getResponse(subjectService.getFailedSubjectsByYear(year));
    }
}
