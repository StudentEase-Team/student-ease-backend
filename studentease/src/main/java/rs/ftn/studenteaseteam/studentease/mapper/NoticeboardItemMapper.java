package rs.ftn.studenteaseteam.studentease.mapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import rs.ftn.studenteaseteam.studentease.bean.*;
import rs.ftn.studenteaseteam.studentease.dto.NoticeboardItemDTO;
import rs.ftn.studenteaseteam.studentease.service.AdminService;
import rs.ftn.studenteaseteam.studentease.service.CollegeService;
import rs.ftn.studenteaseteam.studentease.service.ProfessorService;
import rs.ftn.studenteaseteam.studentease.service.SubjectService;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.Optional;

@Component
public class NoticeboardItemMapper {
    private final SubjectService subjectService;
    private final CollegeService collegeService;
    private final AdminService adminService;
    private final ProfessorService professorService;

    @Autowired
    public NoticeboardItemMapper(SubjectService subjectService, CollegeService collegeService, AdminService adminService, ProfessorService professorService) {
        this.subjectService = subjectService;
        this.collegeService = collegeService;
        this.adminService = adminService;
        this.professorService = professorService;
    }


    public NoticeboardItem mapIncomingDTOToObject(NoticeboardItemDTO dto) {

        NoticeboardItem noticeboardItem = new NoticeboardItem();
        noticeboardItem.setId(null);
        noticeboardItem.setTitle(dto.getTitle());
        noticeboardItem.setMessage(dto.getMessage());
        noticeboardItem.setUpdatedAt(new Date());

        if(dto.getSubjectId() != null) {
            Optional<Subject> potentialSubject = subjectService.getById(dto.getSubjectId());
            potentialSubject.ifPresent(noticeboardItem::setSubject);
        }

        if(dto.getCollegeId() != null) {
            Optional<College> potentialCollege = collegeService.getById(dto.getCollegeId());
            potentialCollege.ifPresent(noticeboardItem::setCollege);
        }


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
        if(item.getCreatorRole().equals("ROLE_ADMIN")) {
            Optional<Admin> admin = adminService.getById(item.getCreatorId());
            admin.ifPresent(value -> dto.setCreatorName(value.getUsername()));
        }
        else if(item.getCreatorRole().equals("ROLE_PROFESSOR")) {
            Optional<Professor> prof = professorService.getById(item.getCreatorId());
            prof.ifPresent(value -> dto.setCreatorName(value.getUsername()));
        }
        dto.setId(item.getId());
        dto.setTitle(item.getTitle());
        dto.setMessage(item.getMessage());
        dto.setUpdatedAt(item.getUpdatedAt());

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
            dto.setSubjectName(item.getSubject().getName());
        }
        else
        {
            dto.setSubjectName("");
        }

        if(item.getCollege() != null) {
                dto.setCollegeName(item.getCollege().getName());
        }
        else
        {
            dto.setCollegeName("");
        }
        return dto;
    }
}
