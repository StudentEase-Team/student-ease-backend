package rs.ftn.studenteaseteam.studentease;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

@SpringBootApplication
@EnableAsync
public class StudentEaseApplication {

	public static void main(String[] args) {
		SpringApplication.run(StudentEaseApplication.class, args);
	}

}
