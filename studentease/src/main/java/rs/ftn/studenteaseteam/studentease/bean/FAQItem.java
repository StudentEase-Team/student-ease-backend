package rs.ftn.studenteaseteam.studentease.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class FAQItem {
    @Id
    private Long id;
    private String question;
    private String answer;
    private Boolean isAnswered;

    public FAQItem(Long id, String question, String answer, Boolean isAnswered) {
        this.id = id;
        this.question = question;
        this.answer = answer;
        this.isAnswered = isAnswered;
    }
}
