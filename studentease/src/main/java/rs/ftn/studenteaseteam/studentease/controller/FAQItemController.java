package rs.ftn.studenteaseteam.studentease.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import rs.ftn.studenteaseteam.studentease.dto.FAQItemDTO;
import rs.ftn.studenteaseteam.studentease.service.FAQItemService;
import rs.ftn.studenteaseteam.studentease.service.ResponseEntityService;

import java.util.List;

@RestController
public class FAQItemController {
    private final FAQItemService faqItemService;
    private final ResponseEntityService responseEntityService;

    @Autowired
    public FAQItemController(FAQItemService faqItemService, ResponseEntityService responseEntityService) {
        this.faqItemService = faqItemService;
        this.responseEntityService = responseEntityService;
    }

    @GetMapping("/api/faq/items")
    public ResponseEntity<List<FAQItemDTO>> getAllFAQItems() {
        return responseEntityService.getResponse(faqItemService.getAllFAQItems());
    }

    @GetMapping("/api/faq/items/unanswered")
    public ResponseEntity<List<FAQItemDTO>> getUnansweredFAQItems() {
        return responseEntityService.getResponse(faqItemService.getUnasweredFAQItems());
    }

    @PostMapping("/api/faq/item")
    public ResponseEntity<Boolean> createFAQItem(@RequestBody FAQItemDTO faqItem) {
        return responseEntityService.createBooleanResponse(faqItemService.createFAQItem(faqItem));
    }

    @PutMapping("/api/faq/item")
    public ResponseEntity<Boolean> updateFAQItem(@RequestBody FAQItemDTO faqItem) {
        return responseEntityService.updateBooleanResponse(faqItemService.updateFAQItem(faqItem));
    }

    @DeleteMapping("/api/faq/item/{id}")
    public ResponseEntity<Boolean> deleteFAQItem(@PathVariable long id) {
        return responseEntityService.deleteBooleanResponse(faqItemService.deleteFAQItem(id));
    }
}
