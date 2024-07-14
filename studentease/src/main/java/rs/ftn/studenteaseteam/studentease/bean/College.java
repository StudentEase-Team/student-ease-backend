package rs.ftn.studenteaseteam.studentease.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class College {

    @Id
    private Long id;
    private String name;
    private String abbreviation;

    @OneToOne(mappedBy="college")
    private Noticeboard noticeboard;
}