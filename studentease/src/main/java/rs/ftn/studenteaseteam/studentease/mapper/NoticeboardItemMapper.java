package rs.ftn.studenteaseteam.studentease.mapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import rs.ftn.studenteaseteam.studentease.bean.College;
import rs.ftn.studenteaseteam.studentease.bean.Noticeboard;
import rs.ftn.studenteaseteam.studentease.bean.NoticeboardItem;
import rs.ftn.studenteaseteam.studentease.bean.Subject;
import rs.ftn.studenteaseteam.studentease.dto.NoticeboardItemDTO;
import rs.ftn.studenteaseteam.studentease.service.CollegeService;
import rs.ftn.studenteaseteam.studentease.service.NoticeboardService;
import rs.ftn.studenteaseteam.studentease.service.SubjectService;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.Optional;

@Component
public class NoticeboardItemMapper {
    private final NoticeboardService noticeboardService;
    private final SubjectService subjectService;
    private final CollegeService collegeService;

    @Autowired
    public NoticeboardItemMapper(NoticeboardService noticeboardService, SubjectService subjectService, CollegeService collegeService) {
        this.noticeboardService = noticeboardService;
        this.subjectService = subjectService;
        this.collegeService = collegeService;
    }

    public NoticeboardItem mapIncomingDTOToObject(NoticeboardItemDTO dto) {

        NoticeboardItem noticeboardItem = new NoticeboardItem();
        noticeboardItem.setId(0L);
        noticeboardItem.setTitle(dto.getTitle());
        noticeboardItem.setMessage(dto.getMessage());
        noticeboardItem.setUpdatedAt(LocalDateTime.now());

        Optional<Noticeboard> potentialNoticeboard = noticeboardService.getById(dto.getNoticeboardId());
        if(potentialNoticeboard.isPresent()) {
            noticeboardItem.setNoticeboard(potentialNoticeboard.get());
            potentialNoticeboard.get().getNoticeboardItems().add(noticeboardItem);
        }

        Optional<Subject> potentialSubject = subjectService.getById(dto.getSubjectId());
        potentialSubject.ifPresent(noticeboardItem::setSubject);

        switch(dto.getCategory())
        {
            case "UNIVERSITY_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.UNIVERSITY_ANNOUNCEMENT); break;
            case "UNIVERSITY_GUEST_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.UNIVERSITY_GUEST_ANNOUNCEMENT); break;
            case "COLLEGE_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.COLLEGE_ANNOUNCEMENT); break;
            case "COLLEGE_GUEST_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.COLLEGE_GUEST_ANNOUNCEMENT); break;
            case "SUBJECT_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.SUBJECT_ANNOUNCEMENT); break;
            case "SUBJECT_EXAM_RESULT_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.SUBJECT_EXAM_RESULT_ANNOUNCEMENT); break;
            case "SUBJECT_EXAM_DATE_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.SUBJECT_EXAM_DATE_ANNOUNCEMENT); break;
            case "INTERNSHIP_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.INTERNSHIP_ANNOUNCEMENT); break;
            case "ACTIVITIES_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.ACTIVITIES_ANNOUNCEMENT); break;
        }

        return noticeboardItem;
    }

    public NoticeboardItemDTO mapIncomingObjectToDTO(NoticeboardItem item) {

        NoticeboardItemDTO dto = new NoticeboardItemDTO();
        dto.setId(item.getId());
        dto.setTitle(item.getTitle());
        dto.setMessage(item.getMessage());
        dto.setUpdatedAt(generateDateTime(item.getUpdatedAt()));

        switch(item.getCategory())
        {
            case NoticeboardItem.NoticeboardItemCategory.UNIVERSITY_ANNOUNCEMENT: dto.setCategory("UNIVERSITY_ANNOUNCEMENT"); break;
            case NoticeboardItem.NoticeboardItemCategory.UNIVERSITY_GUEST_ANNOUNCEMENT: dto.setCategory("UNIVERSITY_GUEST_ANNOUNCEMENT"); break;
            case NoticeboardItem.NoticeboardItemCategory.COLLEGE_ANNOUNCEMENT: dto.setCategory("COLLEGE_ANNOUNCEMENT"); break;
            case NoticeboardItem.NoticeboardItemCategory.COLLEGE_GUEST_ANNOUNCEMENT: dto.setCategory("COLLEGE_GUEST_ANNOUNCEMENT"); break;
            case NoticeboardItem.NoticeboardItemCategory.SUBJECT_ANNOUNCEMENT: dto.setCategory("SUBJECT_ANNOUNCEMENT"); break;
            case NoticeboardItem.NoticeboardItemCategory.SUBJECT_EXAM_RESULT_ANNOUNCEMENT: dto.setCategory("SUBJECT_EXAM_RESULT_ANNOUNCEMENT"); break;
            case NoticeboardItem.NoticeboardItemCategory.SUBJECT_EXAM_DATE_ANNOUNCEMENT: dto.setCategory("SUBJECT_EXAM_DATE_ANNOUNCEMENT"); break;
            case NoticeboardItem.NoticeboardItemCategory.INTERNSHIP_ANNOUNCEMENT: dto.setCategory("INTERNSHIP_ANNOUNCEMENT"); break;
            case NoticeboardItem.NoticeboardItemCategory.ACTIVITIES_ANNOUNCEMENT: dto.setCategory("ACTIVITIES_ANNOUNCEMENT"); break;
        }

        if(item.getSubject() != null) {
            Optional<Subject> s = subjectService.getById(item.getSubject().getId());
            if(s.isPresent()) {
                Subject subject = s.get();
                dto.setSubjectName(subject.getName());
                dto.setSubjectId(subject.getId());
                if(subject.getCollege() != null)
                    dto.setCollegeName(subject.getCollege().getName());
            }
        }
        else
        {
            dto.setSubjectName("");
            dto.setCollegeName("");
        }
        return dto;
    }

    public String generateDateTime(LocalDateTime dt)
    {
        return dt.getDayOfMonth() + "." + dt.getMonthValue() + "." + dt.getYear() + ". " + dt.getHour() + ":" + dt.getMinute();
    }
}
