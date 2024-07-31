package rs.ftn.studenteaseteam.studentease.mapper;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;
import rs.ftn.studenteaseteam.studentease.bean.FAQItem;
import rs.ftn.studenteaseteam.studentease.dto.FAQItemDTO;

@Component
@NoArgsConstructor
public class FAQItemMapper {
    public FAQItem mapIncomingDTOToObject(FAQItemDTO faqItemDTO) {
        FAQItem faqItem = new FAQItem();
        faqItem.setId(faqItem.getId());
        faqItem.setQuestion(faqItemDTO.getQuestion());
        faqItem.setAnswer(faqItemDTO.getAnswer());
        faqItem.setIsAnswered(false);

        return faqItem;
    }

    public FAQItemDTO mapIncomingObjectToDTO(FAQItem faqItem) {
        FAQItemDTO faqItemDTO = new FAQItemDTO();
        faqItemDTO.setId(faqItem.getId());
        faqItemDTO.setQuestion(faqItem.getQuestion());
        faqItemDTO.setAnswer(faqItem.getAnswer());
        faqItemDTO.setIsAnswered(faqItem.getIsAnswered());

        return faqItemDTO;
    }
}
