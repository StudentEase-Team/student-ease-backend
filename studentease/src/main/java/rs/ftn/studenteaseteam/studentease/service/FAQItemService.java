package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
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
    private final FAQItemRepository faqItemRepository;
    private final FAQItemMapper mapper;

    @Autowired
    public FAQItemService(FAQItemRepository faqItemRepository, FAQItemMapper mapper) {
        this.faqItemRepository = faqItemRepository;
        this.mapper = mapper;
    }

    public FAQItem getById(Long id) { return faqItemRepository.findById(id).orElse(null); }

    public List<FAQItemDTO> getAllFAQItems() {
        List<FAQItemDTO> dtos = new ArrayList<>();
        for(FAQItem item : faqItemRepository.findAll()) {
            dtos.add(mapper.mapIncomingObjectToDTO(item));
        }
        if(dtos.isEmpty())
            return null;
        return dtos;
    }

    public List<FAQItemDTO> getUnasweredFAQItems() {
        List<FAQItemDTO> dtos = new ArrayList<>();
        for(FAQItem item : faqItemRepository.findAll()) {
            if(!item.getIsAnswered())
                dtos.add(mapper.mapIncomingObjectToDTO(item));
        }
        if(dtos.isEmpty())
            return null;
        return dtos;
    }

    public Boolean createFAQItem(FAQItemDTO faqItemDTO) {
        try{
            FAQItem item = mapper.mapIncomingDTOToObject(faqItemDTO);
            item.setId(null);
            item.setAnswer("");
            item.setIsAnswered(false);
            faqItemRepository.save(item);
            return true;
        }
        catch (Exception e) {
            return false;
        }
    }

    public Boolean deleteFAQItem(long id) {
        try{
            FAQItem item = faqItemRepository.findById(id).orElse(null);
            if(item != null) {
                AbstractUser user = (AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
                if(item.getCreatorId() == null)
                {
                    faqItemRepository.delete(item);
                    return true;
                }
                else if(item.getCreatorId().equals(user.getId()) || user.getUserRole().equals(AbstractUser.UserRole.ADMIN)) {
                    faqItemRepository.delete(item);
                    return true;
                }
            }
            return false;
        }
        catch (Exception e) {
            return false;
        }
    }

    public Boolean updateFAQItem(FAQItemDTO faqItemDTO) {
        try{
            FAQItem item = getById(faqItemDTO.getId());
            if(!item.getIsAnswered()) {
                AbstractUser user = (AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
                item.setCreatorId(user.getId());
                item.setAnswer(faqItemDTO.getAnswer());
                item.setIsAnswered(true);
                faqItemRepository.save(item);
                return true;
            }
            return false;
        }
        catch (Exception e) {
            return false;
        }
    }
}
