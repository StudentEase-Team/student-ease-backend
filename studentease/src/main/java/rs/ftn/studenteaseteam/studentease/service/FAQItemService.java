package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.AbstractUser;
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

    public ResponseEntity<List<FAQItemDTO>> getUnasweredFAQItems() {
        List<FAQItemDTO> dtos = new ArrayList<>();
        for(FAQItem item : faqItemRepository.findAll()) {
            if(!item.getIsAnswered())
                dtos.add(mapper.mapIncomingObjectToDTO(item));
        }

        return new ResponseEntity<>(dtos, HttpStatus.OK);
    }

    public ResponseEntity<Boolean> createFAQItem(FAQItemDTO faqItemDTO) {
        try{
            FAQItem item = mapper.mapIncomingDTOToObject(faqItemDTO);
            item.setId(null);
            item.setAnswer("");
            item.setIsAnswered(false);
            save(item);

            return new ResponseEntity<>(true, HttpStatus.CREATED);
        }
        catch (Exception e) {
            return new ResponseEntity<>(false, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    public ResponseEntity<Boolean> deleteFAQItem(long id) {
        try{
            FAQItem item = faqItemRepository.findById(id).orElse(null);
            if(item != null) {
                AbstractUser user = (AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
                if(item.getCreatorId() == null)
                {
                    faqItemRepository.delete(item);
                    return new ResponseEntity<>(true, HttpStatus.OK);
                }
                else if(item.getCreatorId().equals(user.getId()) || user.getUserRole().equals(AbstractUser.UserRole.ADMIN)) {
                    faqItemRepository.delete(item);
                    return new ResponseEntity<>(true, HttpStatus.OK);
                }
                return new ResponseEntity<>(false, HttpStatus.FORBIDDEN);
            }
            return new ResponseEntity<>(false, HttpStatus.NOT_FOUND);
        }
        catch (Exception e) {
            return new ResponseEntity<>(false, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    public ResponseEntity<Boolean> updateFAQItem(FAQItemDTO faqItemDTO) {
        try{
            FAQItem item = getById(faqItemDTO.getId());
            if(!item.getIsAnswered()) {
                AbstractUser user = (AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
                item.setCreatorId(user.getId());
                item.setAnswer(faqItemDTO.getAnswer());
                item.setIsAnswered(true);
                save(item);

                return new ResponseEntity<>(true, HttpStatus.OK);
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
