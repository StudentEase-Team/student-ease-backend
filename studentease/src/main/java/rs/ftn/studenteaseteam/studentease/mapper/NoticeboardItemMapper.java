package rs.ftn.studenteaseteam.studentease.mapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import rs.ftn.studenteaseteam.studentease.bean.Noticeboard;
import rs.ftn.studenteaseteam.studentease.bean.NoticeboardItem;
import rs.ftn.studenteaseteam.studentease.bean.Subject;
import rs.ftn.studenteaseteam.studentease.dto.NoticeboardItemDTO;
import rs.ftn.studenteaseteam.studentease.service.NoticeboardService;
import rs.ftn.studenteaseteam.studentease.service.SubjectService;

import java.time.LocalDateTime;
import java.util.Optional;

@Component
public class NoticeboardItemMapper {
    private NoticeboardService noticeboardService;
    private SubjectService subjectService;

    @Autowired
    public NoticeboardItemMapper(NoticeboardService noticeboardService, SubjectService subjectService) {
        this.noticeboardService = noticeboardService;
        this.subjectService = subjectService;
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
            case "UNIVERSITY_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.UNIVERSITY_ANNOUNCEMENT);
            case "UNIVERSITY_GUEST_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.UNIVERSITY_GUEST_ANNOUNCEMENT);
            case "COLLEGE_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.COLLEGE_ANNOUNCEMENT);
            case "COLLEGE_GUEST_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.COLLEGE_GUEST_ANNOUNCEMENT);
            case "SUBJECT_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.SUBJECT_ANNOUNCEMENT);
            case "SUBJECT_EXAM_RESULT_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.SUBJECT_EXAM_RESULT_ANNOUNCEMENT);
            case "SUBJECT_EXAM_DATE_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.SUBJECT_EXAM_DATE_ANNOUNCEMENT);
            case "INTERNSHIP_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.INTERNSHIP_ANNOUNCEMENT);
            case "ACTIVITIES_ANNOUNCEMENT": noticeboardItem.setCategory(NoticeboardItem.NoticeboardItemCategory.ACTIVITIES_ANNOUNCEMENT);
        }

        return noticeboardItem;
    }

    public NoticeboardItemDTO mapIncomingObjectToDTO(NoticeboardItem item) {

        NoticeboardItemDTO dto = new NoticeboardItemDTO();
        dto.setId(0L);
        dto.setTitle(item.getTitle());
        dto.setMessage(item.getMessage());
        dto.setUpdatedAt(LocalDateTime.now());

        switch(item.getCategory())
        {
            case NoticeboardItem.NoticeboardItemCategory.UNIVERSITY_ANNOUNCEMENT: dto.setCategory("UNIVERSITY_ANNOUNCEMENT");
            case NoticeboardItem.NoticeboardItemCategory.UNIVERSITY_GUEST_ANNOUNCEMENT: dto.setCategory("UNIVERSITY_GUEST_ANNOUNCEMENT");
            case NoticeboardItem.NoticeboardItemCategory.COLLEGE_ANNOUNCEMENT: dto.setCategory("COLLEGE_ANNOUNCEMENT");
            case NoticeboardItem.NoticeboardItemCategory.COLLEGE_GUEST_ANNOUNCEMENT: dto.setCategory("COLLEGE_GUEST_ANNOUNCEMENT");
            case NoticeboardItem.NoticeboardItemCategory.SUBJECT_ANNOUNCEMENT: dto.setCategory("SUBJECT_ANNOUNCEMENT");
            case NoticeboardItem.NoticeboardItemCategory.SUBJECT_EXAM_RESULT_ANNOUNCEMENT: dto.setCategory("SUBJECT_EXAM_RESULT_ANNOUNCEMENT");
            case NoticeboardItem.NoticeboardItemCategory.SUBJECT_EXAM_DATE_ANNOUNCEMENT: dto.setCategory("SUBJECT_EXAM_DATE_ANNOUNCEMENT");
            case NoticeboardItem.NoticeboardItemCategory.INTERNSHIP_ANNOUNCEMENT: dto.setCategory("INTERNSHIP_ANNOUNCEMENT");
            case NoticeboardItem.NoticeboardItemCategory.ACTIVITIES_ANNOUNCEMENT: dto.setCategory("ACTIVITIES_ANNOUNCEMENT");
        }

        return dto;
    }
}
