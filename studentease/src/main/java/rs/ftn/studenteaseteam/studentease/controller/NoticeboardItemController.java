package rs.ftn.studenteaseteam.studentease.controller;

import jakarta.annotation.security.PermitAll;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import rs.ftn.studenteaseteam.studentease.bean.NoticeboardItem;
import rs.ftn.studenteaseteam.studentease.dto.NoticeboardItemDTO;
import rs.ftn.studenteaseteam.studentease.service.NoticeboardItemService;

import java.util.List;

@RestController
public class NoticeboardItemController {
    private final NoticeboardItemService noticeboardItemService;

    @Autowired
    public NoticeboardItemController(NoticeboardItemService noticeboardItemService) {
        this.noticeboardItemService = noticeboardItemService;
    }

    @PostMapping("/api/noticeboard/item")
    @PermitAll
    public ResponseEntity<Boolean> create(@RequestBody NoticeboardItemDTO dto) {
        return noticeboardItemService.createNewNoticeboardItem(dto);
    }

    @GetMapping("/api/noticeboard/items/all")
    public ResponseEntity<List<NoticeboardItemDTO>> getAllNoticeboardItems() {
        return noticeboardItemService.getAllNoticeboardItems();
    }

    @GetMapping("/api/noticeboard/items")
    public ResponseEntity<List<NoticeboardItemDTO>> getNoticeboardItemsByCollege(@RequestParam String collegeAbb) {
        return noticeboardItemService.getNoticeboardItemsByCollege(collegeAbb);
    }
}
