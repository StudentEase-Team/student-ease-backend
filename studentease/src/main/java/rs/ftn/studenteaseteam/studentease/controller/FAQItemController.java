package rs.ftn.studenteaseteam.studentease.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import rs.ftn.studenteaseteam.studentease.dto.FAQItemDTO;
import rs.ftn.studenteaseteam.studentease.service.FAQItemService;

import java.util.List;

@RestController
public class FAQItemController {
    private final FAQItemService faqItemService;

    @Autowired
    public FAQItemController(FAQItemService faqItemService) { this.faqItemService = faqItemService; }

    @GetMapping("/api/faq/items")
    public ResponseEntity<List<FAQItemDTO>> getAllFAQItems() {
        return faqItemService.getAllFAQItems();
    }

    @PostMapping("/api/faq/item")
    public ResponseEntity<Boolean> createFAQItem(@RequestBody FAQItemDTO faqItem) {
        return faqItemService.createFAQItem(faqItem);
    }

    @PutMapping("/api/faq/item")
    public ResponseEntity<Boolean> uodateFAQItem(@RequestBody FAQItemDTO faqItem) {
        return faqItemService.updateFAQItem(faqItem);
    }
}
