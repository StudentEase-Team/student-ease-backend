package rs.ftn.studenteaseteam.studentease.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import rs.ftn.studenteaseteam.studentease.dto.ObligationDTO;
import rs.ftn.studenteaseteam.studentease.service.ObligationService;

import java.util.List;

@RestController
public class ObligationController {
    private final ObligationService obligationService;

    @Autowired
    public ObligationController(ObligationService obligationService) {
        this.obligationService = obligationService;
    }

    @GetMapping("/api/obligations/student")
    public ResponseEntity<List<ObligationDTO>> getObligationsByStudent() {
        return obligationService.getObligationsByStudent();
    }

    @GetMapping("/api/obligations/professor")
    public ResponseEntity<List<ObligationDTO>> getObligationsByProfessor() {
        return obligationService.getObligationsByProfessor();
    }

    @GetMapping("/api/obligations/student/download")
    public ResponseEntity<byte[]> downloadObligationsForStudent() {
        return obligationService.downloadObligationsForStudentIcs();
    }

    @GetMapping("/api/obligations/professor/download")
    public ResponseEntity<byte[]> downloadObligationsForProfessor() {
        return obligationService.downloadObligationsForProfessorIcs();
    }
}
