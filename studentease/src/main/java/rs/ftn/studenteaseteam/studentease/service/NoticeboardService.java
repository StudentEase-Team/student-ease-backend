package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ftn.studenteaseteam.studentease.bean.Noticeboard;
import rs.ftn.studenteaseteam.studentease.repository.NoticeboardItemRepository;
import rs.ftn.studenteaseteam.studentease.repository.NoticeboardRepository;
import java.util.Optional;

@Service
public class NoticeboardService {

    private NoticeboardRepository noticeboardRepository;
    private NoticeboardItemRepository noticeboardItemRepository;
    private SubjectService subjectService;

    @Autowired
    public NoticeboardService(NoticeboardRepository noticeboardRepository, NoticeboardItemRepository noticeboardItemRepository, SubjectService subjectService) {
        this.noticeboardRepository = noticeboardRepository;
        this.noticeboardItemRepository = noticeboardItemRepository;
        this.subjectService = subjectService;
    }

    //CRUD ZA NOTICEBOARD
    public Optional<Noticeboard> get(long id) {
        return noticeboardRepository.findById(id);
    }
}
