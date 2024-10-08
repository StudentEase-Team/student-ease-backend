package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.Material;
import rs.ftn.studenteaseteam.studentease.repository.MaterialRepository;

import java.util.ArrayList;
import java.util.List;

@Service
public class MaterialService {
    private final MaterialRepository materialRepository;

    @Autowired
    public MaterialService(MaterialRepository materialRepository) {
        this.materialRepository = materialRepository;
    }

    public List<Material> getBySubjectID(Long subjectId) {
        ArrayList<Material> materials = materialRepository.findBySubjectId(subjectId);
        if (materials.isEmpty()) {
            return null;
        }
        return materials;
    }
}
