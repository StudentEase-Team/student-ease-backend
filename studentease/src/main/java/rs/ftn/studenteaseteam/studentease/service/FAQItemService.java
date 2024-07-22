package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.FAQItem;
import rs.ftn.studenteaseteam.studentease.dto.FAQItemDTO;
import rs.ftn.studenteaseteam.studentease.mapper.FAQItemMapper;
import rs.ftn.studenteaseteam.studentease.repository.FAQItemRepository;

import java.util.ArrayList;
import java.util.List;

@Service
public class FAQItemService {
    private FAQItemRepository faqItemRepository;
    private FAQItemMapper mapper;

    @Autowired
    public FAQItemService(FAQItemRepository faqItemRepository, FAQItemMapper mapper) {
        this.faqItemRepository = faqItemRepository;
        this.mapper = mapper;
    }

    public FAQItem getById(Long id) { return faqItemRepository.findById(id).orElse(null); }

    public List<FAQItem> getAll() { return faqItemRepository.findAll(); }

    public FAQItem save(FAQItem faqItem) { return faqItemRepository.save(faqItem); }

    public ResponseEntity<List<FAQItemDTO>> getAllFAQItems() {
        List<FAQItemDTO> dtos = new ArrayList<>();
        for(FAQItem item : faqItemRepository.findAll()) {
            dtos.add(mapper.mapIncomingObjectToDTO(item));
        }

        return new ResponseEntity<>(dtos, HttpStatus.OK);
    }

    public ResponseEntity<Boolean> createFAQItem(FAQItemDTO faqItemDTO) {
        try{
            FAQItem item = mapper.mapIncomingDTOToObject(faqItemDTO);
            item.setId(0L);
            item.setAnswer("");
            item.setIsAnswered(false);
            save(item);

            return new ResponseEntity<>(true, HttpStatus.CREATED);
        }
        catch (Exception e) {
            return new ResponseEntity<>(false, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    public ResponseEntity<Boolean> updateFAQItem(FAQItemDTO faqItemDTO) {
        try{
            FAQItem item = getById(faqItemDTO.getId());
            if(!item.getIsAnswered()) {
                item.setAnswer(faqItemDTO.getAnswer());
                item.setIsAnswered(true);
                save(item);

                return new ResponseEntity<>(true, HttpStatus.CREATED);
            }
            else {
                return new ResponseEntity<>(false, HttpStatus.CONFLICT);
            }
        }
        catch (Exception e) {
            return new ResponseEntity<>(false, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
