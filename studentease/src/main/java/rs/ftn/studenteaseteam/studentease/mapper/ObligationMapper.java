package rs.ftn.studenteaseteam.studentease.mapper;

import org.springframework.stereotype.Component;
import rs.ftn.studenteaseteam.studentease.bean.Obligation;
import rs.ftn.studenteaseteam.studentease.dto.ObligationDTO;

@Component
public class ObligationMapper {
    public ObligationDTO mapIncomingObjectToDTO(Obligation obligation) {
        ObligationDTO obligationDTO = new ObligationDTO();
        obligationDTO.setId(obligation.getId());
        obligationDTO.setTitle(obligation.getTitle());
        obligationDTO.setDescription(obligation.getDescription());
        obligationDTO.setEndDate(obligation.getEndDate());
        obligationDTO.setStartDate(obligation.getStartDate());
        obligationDTO.setProfessorName(obligation.getProfessor().getFirstName() + " " + obligation.getProfessor().getLastName());
        obligationDTO.setSubjectName(obligation.getSubject().getName());
        switch(obligation.getCategory()){
            case Obligation.ObligationCategory.LECTURE: obligationDTO.setCategory("Lecture");break;
            case Obligation.ObligationCategory.EXERCISE: obligationDTO.setCategory("Exercise");break;
            case Obligation.ObligationCategory.EXAM: obligationDTO.setCategory("Exam");break;
        }
        return obligationDTO;
    }
}
