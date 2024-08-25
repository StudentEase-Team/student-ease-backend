package rs.ftn.studenteaseteam.studentease.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
public class FAQItemDTO {
    private Long id;
    private String question;
    private String answer;
    private Boolean isAnswered;
    private Date creationDate;
}
