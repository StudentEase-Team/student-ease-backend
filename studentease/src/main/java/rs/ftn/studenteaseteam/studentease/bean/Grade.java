package rs.ftn.studenteaseteam.studentease.bean;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Grade {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch=FetchType.EAGER)
    @JsonIgnore
    private Student student;

    @ManyToOne(fetch=FetchType.EAGER)
    @JsonIgnore
    private Subject subject;

    private Date date;

    private int value;
}
