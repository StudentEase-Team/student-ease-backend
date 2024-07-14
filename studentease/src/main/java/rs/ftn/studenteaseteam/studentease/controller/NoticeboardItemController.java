package rs.ftn.studenteaseteam.studentease.controller;

import jakarta.annotation.security.PermitAll;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import rs.ftn.studenteaseteam.studentease.dto.NoticeboardItemDTO;
import rs.ftn.studenteaseteam.studentease.service.NoticeboardItemService;

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
}
