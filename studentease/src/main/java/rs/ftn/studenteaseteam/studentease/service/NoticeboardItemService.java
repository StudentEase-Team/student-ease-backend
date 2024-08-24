package rs.ftn.studenteaseteam.studentease.service;

import jakarta.mail.MessagingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.*;
import rs.ftn.studenteaseteam.studentease.dto.NoticeboardItemDTO;
import rs.ftn.studenteaseteam.studentease.mapper.NoticeboardItemMapper;
import rs.ftn.studenteaseteam.studentease.repository.NoticeboardItemRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class NoticeboardItemService {
    private final NoticeboardItemRepository noticeboardItemRepository;
    private final NoticeboardItemMapper mapper;
    private final MailService mailService;
    private final StudentService studentService;

    @Autowired
    public NoticeboardItemService(NoticeboardItemRepository noticeboardItemRepository, NoticeboardItemMapper mapper, MailService mailService, StudentService studentService) {
        this.noticeboardItemRepository = noticeboardItemRepository;
        this.mapper = mapper;
        this.mailService = mailService;
        this.studentService = studentService;
    }

    public Boolean createNewNoticeboardItem(NoticeboardItemDTO dto) {
        AbstractUser user = (AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        NoticeboardItem newNoticeboardItem = mapper.mapIncomingDTOToObject(dto);
        newNoticeboardItem.setCreatorId(user.getId());
        newNoticeboardItem.setCreatorRole(user.getUserRole().name());

        if(dto.shouldNotify)
        {
            //Ako je fakultet, onda sve koji pohadjaju taj faks
            if(dto.getCategory().equals("COLLEGE_ANNOUNCEMENT") || dto.getCategory().equals("COLLEGE_GUEST_ANNOUNCEMENT")){
                newNoticeboardItem.getCollege().getStudents().forEach(student -> {
                    try {
                        mailService.sendNoticeboardMessage(student.getEmail(), "New alert: " + dto.title, dto.title + "\n" + dto.message);
                    } catch (MessagingException e) {
                        throw new RuntimeException(e);
                    }
                });
            }
            //Ako je predmet, onda sve koji slusaju taj predmet i koji nisu polozili
            else if(dto.getCategory().equals("SUBJECT_ANNOUNCEMENT") || dto.getCategory().equals("SUBJECT_EXAM_RESULT_ANNOUNCEMENT") ||  dto.getCategory().equals("SUBJECT_EXAM_DATE_ANNOUNCEMENT") ){
                newNoticeboardItem.getSubject().getStudents().forEach(student -> {
                    try {
                        boolean found = false;
                        for(Grade grade : newNoticeboardItem.getSubject().getGrades())
                        {
                            if (grade.getStudent().getId() == student.getId()) {
                                found = true;
                                break;
                            }
                        }
                        if(!found)
                            mailService.sendNoticeboardMessage(student.getEmail(), "New alert: " + dto.title, dto.title + "\n" + dto.message);
                    } catch (MessagingException e) {
                        System.out.println(e.getMessage());
                    }
                });
            }
            //Ako je univerzitet, onda sve
            else
            {
                studentService.getAll().forEach(student -> {
                    try {
                        mailService.sendNoticeboardMessage(student.getEmail(), "New alert: " + dto.title, dto.title + "\n" + dto.message);
                    } catch (MessagingException e) {
                        throw new RuntimeException(e);
                    }
                });
            }
        }

        noticeboardItemRepository.save(newNoticeboardItem);
        return true;
    }

    public Boolean deleteNoticeboardItem(long id) {
        try{
            NoticeboardItem item = noticeboardItemRepository.findById(id).orElse(null);
            if(item != null) {
                AbstractUser user = (AbstractUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
                if(item.getCreatorId().equals(user.getId()) || user.getUserRole().equals(AbstractUser.UserRole.ADMIN)) {
                    noticeboardItemRepository.delete(item);
                    return true;
                }
            }
            return false;
        }
        catch (Exception e) {
            return false;
        }
    }

    public List<NoticeboardItemDTO> getAllNoticeboardItems() {
         List<NoticeboardItemDTO> dtos = new ArrayList<>();
         for(NoticeboardItem item : noticeboardItemRepository.findAll().stream().toList()) {
             dtos.add(mapper.mapIncomingObjectToDTO(item));
         }
         if(dtos.isEmpty())
             return null;
         return dtos;
    }

    public List<NoticeboardItemDTO> getNoticeboardItemsByCollege(String collegeAbb) {
        List<NoticeboardItemDTO> dtos = new ArrayList<>();
        for(NoticeboardItem item : noticeboardItemRepository.findAll().stream().toList()) {
            if(item.getSubject() != null)
                if(item.getSubject().getCollege().getAbbreviation().equals(collegeAbb)) {
                    dtos.add(mapper.mapIncomingObjectToDTO(item));
                }
        }
        if(dtos.isEmpty())
            return null;
        return dtos;
    }
}
