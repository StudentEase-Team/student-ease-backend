package rs.ftn.studenteaseteam.studentease.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
public class NoticeboardItemDTO {
    public long id;
    public String title;
    public String message;
    public LocalDateTime updatedAt;
    public String category;
    public Boolean shouldNotify;
    public Long noticeboardId;
    public Long subjectId;
}