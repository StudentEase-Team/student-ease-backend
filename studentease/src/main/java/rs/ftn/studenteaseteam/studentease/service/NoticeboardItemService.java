package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.AbstractUser;
import rs.ftn.studenteaseteam.studentease.bean.NoticeboardItem;
import rs.ftn.studenteaseteam.studentease.dto.NoticeboardItemDTO;
import rs.ftn.studenteaseteam.studentease.mapper.NoticeboardItemMapper;
import rs.ftn.studenteaseteam.studentease.repository.NoticeboardItemRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class NoticeboardItemService {
    private NoticeboardItemRepository noticeboardItemRepository;
    private NoticeboardItemMapper mapper;

    @Autowired
    public NoticeboardItemService(NoticeboardItemRepository noticeboardItemRepository, NoticeboardItemMapper mapper) {
        this.noticeboardItemRepository = noticeboardItemRepository;
        this.mapper = mapper;
    }

    //CRUD ZA NOTICEBOARD ITEM

    public Optional<NoticeboardItem> getById(long id)
    {
        return noticeboardItemRepository.findById(id);
    }

    public List<NoticeboardItem> getByNoticeboard(long noticeboardId)
    {
        return noticeboardItemRepository.findAll().stream().filter(item -> item.getNoticeboard().getId() == noticeboardId).toList();
    }

    public List<NoticeboardItem> getAll() {
        return noticeboardItemRepository.findAll();
    }

    public NoticeboardItem save(NoticeboardItem noticeboardItem) {
        return noticeboardItemRepository.save(noticeboardItem);
    }

    public ResponseEntity<Boolean> createNewNoticeboardItem(NoticeboardItemDTO dto) {
        AbstractUser user = (AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        NoticeboardItem newNoticeboardItem = mapper.mapIncomingDTOToObject(dto);
        newNoticeboardItem.setCreatorId(user.getId());
            /*
            //Logika za obavestavanje ovde
            if(dto.getShouldNotify())
            {

            }
            */

        noticeboardItemRepository.save(newNoticeboardItem);
        return new ResponseEntity<>(true, HttpStatus.CREATED);
    }

    public ResponseEntity<List<NoticeboardItemDTO>> getAllNoticeboardItems() {
         List<NoticeboardItemDTO> dtos = new ArrayList<>();
         for(NoticeboardItem item : noticeboardItemRepository.findAll().stream().toList()) {
             dtos.add(mapper.mapIncomingObjectToDTO(item));
         }
         return new ResponseEntity<>(dtos, HttpStatus.OK);
    }

    public ResponseEntity<List<NoticeboardItemDTO>> getNoticeboardItemsByCollege(String collegeAbb) {
        List<NoticeboardItemDTO> dtos = new ArrayList<>();
        for(NoticeboardItem item : noticeboardItemRepository.findAll().stream().toList()) {
            if(item.getSubject() != null)
                if(item.getSubject().getCollege().getAbbreviation().equals(collegeAbb)) {
                    dtos.add(mapper.mapIncomingObjectToDTO(item));
                }
        }

        return new ResponseEntity<>(dtos, HttpStatus.OK);
    }
}
