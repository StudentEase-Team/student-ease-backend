package rs.ftn.studenteaseteam.studentease.bean;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Material {

    public enum MaterialType {
        VIDEO_MATERIAL,
        PRESENTATION,
        DOCUMENT,
        PROGRAM,
        OTHER
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String about;
    private String description;
    private String URL;
    @ManyToOne(fetch = FetchType.EAGER)
    @JsonIgnore
    private Subject subject;
    private MaterialType materialType;
}
