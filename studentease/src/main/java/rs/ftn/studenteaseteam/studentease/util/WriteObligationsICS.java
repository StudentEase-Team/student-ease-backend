package rs.ftn.studenteaseteam.studentease.util;

import org.springframework.stereotype.Component;
import net.fortuna.ical4j.model.Calendar;
import net.fortuna.ical4j.model.component.VEvent;
import net.fortuna.ical4j.model.property.*;
import net.fortuna.ical4j.model.DateTime;
import net.fortuna.ical4j.data.CalendarOutputter;
import rs.ftn.studenteaseteam.studentease.bean.Obligation;
import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;

@Component
public class WriteObligationsICS {
    public byte[] writeObligationsToIcs(ArrayList<Obligation> obligations) {
        String description = "";
        try (ByteArrayOutputStream baos = new ByteArrayOutputStream();
             OutputStreamWriter osw = new OutputStreamWriter(baos)) {

            Calendar calendar = new Calendar();
            calendar.getProperties().add(new ProdId("-//My Company//NONSGML My Product//EN"));
            calendar.getProperties().add(Version.VERSION_2_0);
            calendar.getProperties().add(CalScale.GREGORIAN);
            calendar.getProperties().add(Method.REQUEST);

            for (Obligation obligation : obligations) {
                LocalDateTime startLocalDateTime = obligation.getStartDate().toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime();
                LocalDateTime endLocalDateTime = obligation.getEndDate().toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime();

                DateTime icalStartDate = new DateTime(Date.from(startLocalDateTime.atZone(ZoneId.systemDefault()).toInstant()));
                DateTime icalEndDate = new DateTime(Date.from(endLocalDateTime.atZone(ZoneId.systemDefault()).toInstant()));

                VEvent event = new VEvent(icalStartDate, icalEndDate, obligation.getTitle());

                if (obligation.getTitle() != null && !obligation.getTitle().isEmpty()) {
                    event.getProperties().add(new Summary(obligation.getTitle()));
                }

                if (obligation.getCategory() != null) {
                    event.getProperties().add(new Categories(obligation.getCategory().name()));
                }

                if (obligation.getDescription() != null && !obligation.getDescription().isEmpty()) {
                    description += obligation.getDescription() + "\n";
                }

                if (obligation.getSubject() != null && obligation.getSubject().getName() != null) {
                    description += "Subject: " + obligation.getSubject().getName() + "\n";
                }

                if (obligation.getStudent() != null && obligation.getStudent().getFirstName() != null && obligation.getStudent().getLastName() != null) {
                    description += "Student: " + obligation.getStudent().getFirstName() + " " + obligation.getStudent().getLastName() + "\n";
                }

                if (obligation.getProfessor() != null && obligation.getProfessor().getFirstName() != null && obligation.getProfessor().getLastName() != null) {
                    description += "Professor: " + obligation.getProfessor().getFirstName() + " " + obligation.getProfessor().getLastName() + "\n";
                }

                if (!description.isEmpty()) {
                    event.getProperties().add(new Description(description));
                }
                calendar.getComponents().add(event);
                description = "";
            }

            CalendarOutputter calendarWriter = new CalendarOutputter();
            calendarWriter.setValidating(false);
            calendarWriter.output(calendar, osw);

            return baos.toByteArray();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
