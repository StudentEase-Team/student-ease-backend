package rs.ftn.studenteaseteam.studentease.bean;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Noticeboard {
    @Id
    private Long id;
    private boolean enabled;

    @OneToMany
    @JsonIgnore
    private List<NoticeboardItem> noticeboardItems;

    @OneToOne
    @JoinColumn(name="college_id")
    @JsonIgnore
    private College college;
}
