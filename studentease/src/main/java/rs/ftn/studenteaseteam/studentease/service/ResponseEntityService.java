package rs.ftn.studenteaseteam.studentease.service;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class ResponseEntityService {


    public <T> ResponseEntity<T> createResponse(T body) {
        return new ResponseEntity<>(body, HttpStatus.CREATED);
    }

    public ResponseEntity<Void> createNoContentResponse() {
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    public ResponseEntity<Boolean> createBooleanResponse(boolean result) {
        return new ResponseEntity<>(result, result ? HttpStatus.CREATED : HttpStatus.BAD_REQUEST);
    }

    public ResponseEntity<Boolean> updateBooleanResponse(boolean result) {
        return new ResponseEntity<>(result, result ? HttpStatus.OK : HttpStatus.BAD_REQUEST);
    }

    public ResponseEntity<Boolean> getBooleanResponse(boolean result) {
        return new ResponseEntity<>(result, result ? HttpStatus.OK : HttpStatus.NOT_FOUND);
    }

    public ResponseEntity<byte[]> getByteResponse(byte[] result) {
        return  ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=obligations_professor.ics")
                .contentType(MediaType.valueOf("text/calendar"))
                .body(result);
    }

    public <T> ResponseEntity<T> getResponse(T result) {
        return new ResponseEntity<>(result, result != null ? HttpStatus.OK : HttpStatus.NOT_FOUND);
    }

    public ResponseEntity<Boolean> deleteBooleanResponse(boolean result) {
        return new ResponseEntity<>(result, result ? HttpStatus.OK : HttpStatus.FORBIDDEN);
    }
}
