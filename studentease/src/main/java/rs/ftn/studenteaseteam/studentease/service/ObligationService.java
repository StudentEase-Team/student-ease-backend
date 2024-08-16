package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.AbstractUser;
import rs.ftn.studenteaseteam.studentease.bean.Obligation;
import rs.ftn.studenteaseteam.studentease.dto.ObligationDTO;
import rs.ftn.studenteaseteam.studentease.mapper.ObligationMapper;
import rs.ftn.studenteaseteam.studentease.repository.ObligationRepository;

import java.util.ArrayList;
import java.util.List;

@Service
public class ObligationService {
    private final ObligationRepository obligationRepository;
    private final ObligationMapper obligationMapper;

    @Autowired
    public ObligationService(ObligationRepository obligationRepository, ObligationMapper obligationMapper) {
        this.obligationRepository = obligationRepository;
        this.obligationMapper = obligationMapper;
    }

    public Obligation getById(Long id) { return obligationRepository.findById(id).orElse(null); }

    public List<Obligation> getAll() { return obligationRepository.findAll(); }

    public Obligation save(Obligation obligation) { return obligationRepository.save(obligation); }


    public ResponseEntity<List<ObligationDTO>> getObligationsByStudent() {
        ArrayList<ObligationDTO> dtos = new ArrayList<>();
        try {
            AbstractUser user = (AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            for(Obligation o : obligationRepository.findByStudentId(user.getId())) {
                dtos.add(obligationMapper.mapIncomingObjectToDTO(o));
            }
            return new ResponseEntity<>(dtos, HttpStatus.OK);
        }
        catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    public ResponseEntity<List<ObligationDTO>> getObligationsByProfessor() {
        ArrayList<ObligationDTO> dtos = new ArrayList<>();
        try {
            AbstractUser user = (AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            for(Obligation o : obligationRepository.findByProfessorId(user.getId())) {
                dtos.add(obligationMapper.mapIncomingObjectToDTO(o));
            }
            return new ResponseEntity<>(dtos, HttpStatus.OK);
        }
        catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
