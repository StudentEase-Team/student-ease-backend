package rs.ftn.studenteaseteam.studentease.controller;

import jakarta.annotation.security.PermitAll;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import rs.ftn.studenteaseteam.studentease.bean.NoticeboardItem;
import rs.ftn.studenteaseteam.studentease.dto.NoticeboardItemDTO;
import rs.ftn.studenteaseteam.studentease.service.NoticeboardItemService;
import rs.ftn.studenteaseteam.studentease.service.ResponseEntityService;

import java.util.List;

@RestController
public class NoticeboardItemController {
    private final NoticeboardItemService noticeboardItemService;
    private final ResponseEntityService responseEntityService;

    @Autowired
    public NoticeboardItemController(NoticeboardItemService noticeboardItemService, ResponseEntityService responseEntityService) {
        this.noticeboardItemService = noticeboardItemService;
        this.responseEntityService = responseEntityService;
    }

    @PostMapping("/api/noticeboard/item")
    public ResponseEntity<Boolean> create(@RequestBody NoticeboardItemDTO dto) {
        return responseEntityService.createBooleanResponse(noticeboardItemService.createNewNoticeboardItem(dto));
    }

    @GetMapping("/api/noticeboard/items/all")
    public ResponseEntity<List<NoticeboardItemDTO>> getAllNoticeboardItems() {
        return responseEntityService.getResponse(noticeboardItemService.getAllNoticeboardItems());
    }

    @GetMapping("/api/noticeboard/items")
    public ResponseEntity<List<NoticeboardItemDTO>> getNoticeboardItemsByCollege(@RequestParam String collegeAbb) {
        return responseEntityService.getResponse(noticeboardItemService.getNoticeboardItemsByCollege(collegeAbb));
    }

    @DeleteMapping("/api/noticeboard/item/{id}")
    public ResponseEntity<Boolean> deleteNoticeboardItem(@PathVariable long id) {
        return responseEntityService.deleteBooleanResponse(noticeboardItemService.deleteNoticeboardItem(id));
    }
}
