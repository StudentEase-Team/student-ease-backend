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
import java.util.List;
import org.springframework.http.MediaType;
import org.springframework.http.HttpHeaders;
import rs.ftn.studenteaseteam.studentease.util.WriteObligationsICS;
import java.util.ArrayList;

@Service
public class ObligationService {
    private final ObligationRepository obligationRepository;
    private final ObligationMapper obligationMapper;
    private final WriteObligationsICS writeObligationsICS;


    @Autowired
    public ObligationService(ObligationRepository obligationRepository, ObligationMapper obligationMapper, WriteObligationsICS writeObligationsICS) {
        this.obligationRepository = obligationRepository;
        this.obligationMapper = obligationMapper;
        this.writeObligationsICS = writeObligationsICS;
    }

    public List<ObligationDTO> getObligationsByStudent() {
        ArrayList<ObligationDTO> dtos = new ArrayList<>();
        try {
            AbstractUser user = (AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            for(Obligation o : obligationRepository.findByStudentId(user.getId())) {
                dtos.add(obligationMapper.mapIncomingObjectToDTO(o));
            }
            if(dtos.isEmpty())
                return null;
            return dtos;
        }
        catch (Exception e) {
            return null;
        }
    }

    public List<ObligationDTO> getObligationsByProfessor() {
        ArrayList<ObligationDTO> dtos = new ArrayList<>();
        try {
            AbstractUser user = (AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            for(Obligation o : obligationRepository.findByProfessorId(user.getId())) {
                dtos.add(obligationMapper.mapIncomingObjectToDTO(o));
            }
            if(dtos.isEmpty())
                return null;
            return dtos;
        }
        catch (Exception e) {
            return null;
        }
    }

    public byte[] downloadObligationsForStudentIcs() {
        AbstractUser user = (AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<Obligation> obligations = obligationRepository.findByStudentId(user.getId());

        return writeObligationsICS.writeObligationsToIcs(new ArrayList<>(obligations));
    }

    public byte[] downloadObligationsForProfessorIcs() {
        AbstractUser user = (AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<Obligation> obligations = obligationRepository.findByProfessorId(user.getId());

        return writeObligationsICS.writeObligationsToIcs(new ArrayList<>(obligations));
    }
}
