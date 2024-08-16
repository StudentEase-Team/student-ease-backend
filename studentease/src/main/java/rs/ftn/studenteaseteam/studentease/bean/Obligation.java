package rs.ftn.studenteaseteam.studentease.bean;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.Date;

@Entity
@Getter
@Setter
public class Obligation {

    public enum ObligationCategory {
        LECTURE,
        EXERCISE,
        EXAM
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private Date startDate;
    private Date endDate;
    private String description;
    private ObligationCategory category;

    @ManyToOne(fetch = FetchType.EAGER)
    private Subject subject;

    @ManyToOne(fetch = FetchType.EAGER)
    private Student student;

    @ManyToOne(fetch = FetchType.EAGER)
    private Professor professor;
}
