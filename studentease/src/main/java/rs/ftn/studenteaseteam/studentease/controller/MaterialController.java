package rs.ftn.studenteaseteam.studentease.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import rs.ftn.studenteaseteam.studentease.bean.Material;
import rs.ftn.studenteaseteam.studentease.service.MaterialService;
import rs.ftn.studenteaseteam.studentease.service.ResponseEntityService;

import java.util.List;

@RestController
public class MaterialController {
    private final MaterialService materialService;
    private final ResponseEntityService responseEntityService;

    @Autowired
    public MaterialController(MaterialService materialService, ResponseEntityService responseEntityService) {
        this.materialService = materialService;
        this.responseEntityService = responseEntityService;
    }

    @GetMapping("/api/materials/{id}")
    public ResponseEntity<List<Material>> getBySubjectId(@PathVariable Long id) {
        return responseEntityService.getResponse(materialService.getBySubjectID(id));
    }
}
