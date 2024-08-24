package rs.ftn.studenteaseteam.studentease.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import rs.ftn.studenteaseteam.studentease.dto.ObligationDTO;
import rs.ftn.studenteaseteam.studentease.service.ObligationService;
import rs.ftn.studenteaseteam.studentease.service.ResponseEntityService;

import java.util.List;

@RestController
public class ObligationController {
    private final ObligationService obligationService;
    private final ResponseEntityService responseEntityService;

    @Autowired
    public ObligationController(ObligationService obligationService, ResponseEntityService responseEntityService) {
        this.obligationService = obligationService;
        this.responseEntityService = responseEntityService;
    }

    @GetMapping("/api/obligations/student")
    public ResponseEntity<List<ObligationDTO>> getObligationsByStudent() {
        return responseEntityService.getResponse(obligationService.getObligationsByStudent());
    }

    @GetMapping("/api/obligations/professor")
    public ResponseEntity<List<ObligationDTO>> getObligationsByProfessor() {
        return responseEntityService.getResponse(obligationService.getObligationsByProfessor());
    }

    @GetMapping("/api/obligations/student/download")
    public ResponseEntity<byte[]> downloadObligationsForStudent() {
        return responseEntityService.getByteResponse(obligationService.downloadObligationsForStudentIcs());
    }

    @GetMapping("/api/obligations/professor/download")
    public ResponseEntity<byte[]> downloadObligationsForProfessor() {
        return responseEntityService.getByteResponse(obligationService.downloadObligationsForProfessorIcs());
    }
}
