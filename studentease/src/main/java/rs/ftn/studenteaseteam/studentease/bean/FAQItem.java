package rs.ftn.studenteaseteam.studentease.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
import java.util.UUID;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class FAQItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String question;
    private String answer;
    private Boolean isAnswered;
    private UUID creatorId;
    private Date creationDate;

    public FAQItem(Long id, String question, String answer, Date creationDate, Boolean isAnswered) {
        this.id = id;
        this.question = question;
        this.answer = answer;
        this.creationDate = creationDate;
        this.isAnswered = isAnswered;
    }
}
