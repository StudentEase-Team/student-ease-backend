package rs.ftn.studenteaseteam.studentease.bean;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.UUID;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class NoticeboardItem {

    public enum NoticeboardItemCategory {
        UNIVERSITY_ANNOUNCEMENT,
        UNIVERSITY_GUEST_ANNOUNCEMENT,
        COLLEGE_ANNOUNCEMENT,
        COLLEGE_GUEST_ANNOUNCEMENT,
        SUBJECT_ANNOUNCEMENT,
        SUBJECT_EXAM_RESULT_ANNOUNCEMENT,
        SUBJECT_EXAM_DATE_ANNOUNCEMENT,
        INTERNSHIP_ANNOUNCEMENT,
        ACTIVITIES_ANNOUNCEMENT
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String message;
    private Date updatedAt;
    private NoticeboardItemCategory category;
    private UUID creatorId;
    private String creatorRole;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="subject_id")
    private Subject subject;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="college_id")
    private College college;
}
