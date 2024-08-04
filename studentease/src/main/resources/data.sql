-- noinspection SqlNoDataSourceInspectionForFile

-- noinspection SqlNoDataSourceInspectionForFile

INSERT INTO public.ROLE (name) VALUES ('ROLE_STUDENT');
INSERT INTO public.ROLE (name) VALUES ('ROLE_PROFESSOR');
INSERT INTO public.ROLE (name) VALUES ('ROLE_ADMIN');

--export enum UserRole {
--0    STUDENT = 'STUDENT',
--1    PROFESSOR = 'PROFESSOR',
--2    ADMIN = 'ADMIN',
--}

--public enum NoticeboardItemCategory {
--0        UNIVERSITY_ANNOUNCEMENT,
--1        UNIVERSITY_GUEST_ANNOUNCEMENT,
--2        COLLEGE_ANNOUNCEMENT,
--3        COLLEGE_GUEST_ANNOUNCEMENT,
--4        SUBJECT_ANNOUNCEMENT,
--5        SUBJECT_EXAM_RESULT_ANNOUNCEMENT,
--6        SUBJECT_EXAM_DATE_ANNOUNCEMENT,
--7        INTERNSHIP_ANNOUNCEMENT,
--8        ACTIVITIES_ANNOUNCEMENT
--    }


INSERT INTO public.ADMIN (id, email, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('b28c43a1-9faf-41ab-aab0-aae654a30833', 'admin@studentease.com', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '2');
INSERT INTO public.admin_roles(role_id, admin_id) VALUES('3', 'b28c43a1-9faf-41ab-aab0-aae654a30833');

INSERT INTO public.STUDENT (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('ef6adb8d-4f53-4693-a71a-7689463e7da2', 'ognjenmilojevic2001@gmail.com', 'Ognjen', 'Milojevic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '0');
INSERT INTO public.student_roles(role_id, student_id) VALUES('1', 'ef6adb8d-4f53-4693-a71a-7689463e7da2');

INSERT INTO public.STUDENT (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('a5590e9d-5999-40dc-9bdf-8151df5c7c4f', 'ognjenmilojevic88@gmail.com', 'Milica', 'Kljajic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '0');
INSERT INTO public.student_roles(role_id, student_id) VALUES('1', 'ef6adb8d-4f53-4693-a71a-7689463e7da2');

INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'profesor1.ftn@uns.ac.rs', 'Profesorko', 'Prvakovic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '1');
INSERT INTO public.professor_roles(role_id, professor_id) VALUES('2', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');

INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('aef51b3b-c043-4ed9-89d5-14883850e170', 'profesor2.ftn@uns.ac.rs', 'Profesorko', 'Drugakovic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '1');
INSERT INTO public.professor_roles(role_id, professor_id) VALUES('2', 'aef51b3b-c043-4ed9-89d5-14883850e170');

INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('1', 'Fakultet tehnickih nauka', 'FTN', 'Trg Dositeja Obradovica 6, Novi Sad', '+38121450810', 'studenti@ftn.com');
INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('2', 'Pravni fakultet', 'PF', 'Trg Dositeja Obradovica 1, Novi Sad', '+381214853097', 'student@pravnifakultet.com');

INSERT INTO public.NOTICEBOARD (id, enabled, college_id) VALUES('1', 'true', '1');


INSERT INTO public.SUBJECT (id, college_id, name) VALUES('19', '1', 'Diplomski rad');
INSERT INTO public.SUBJECT (id, college_id, name) VALUES('1', '1', 'Analiza 1');

INSERT INTO public.SUBJECT (id, college_id, name) VALUES('21', '2', 'Rimsko pravo 1');
INSERT INTO public.SUBJECT (id, college_id, name) VALUES('22', '2', 'Rimsko pravo 2');
INSERT INTO public.SUBJECT (id, college_id, name) VALUES('29', '2', 'Diplomski rad');

INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id) VALUES('Dobar dan, zanima me kada pocinje upis na fakultet?', 'Postovani, upis na fakultet pocinje nakon prijemnog ispita, 25. jula.', 'True', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id) VALUES('Postovanje, interesuje me sta je sve potrebno od dokumentacije za konkurs za studentsku stipendiju', 'Dobar dan, potrebni su vam papiri iz gradske kuce o mesecnim prihodima, kao i potvrda da ste redovan student i ukoliko imate brata/sestru moracete dostaviti istu potvrdu i za njih.', 'True', 'aef51b3b-c043-4ed9-89d5-14883850e170');
INSERT INTO public.FAQITEM (question, answer, is_answered) VALUES('Gde mogu da uplatim  novac za polaganje ispita, ako sam zakasnio sa prijavom ispita na studentskom servisu?', '', 'False');


INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id) VALUES ('1', 'Univeristy announcement', 'We are testing the new noticeboard', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, subject_id, creator_id) VALUES ('2', 'FTN Diplomski announcement', 'We are testing the new noticeboard', 'NOW()', '4', '19', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');

-- Student fakultet
INSERT INTO public.student_college (college_id, students_id) VALUES('1', 'ef6adb8d-4f53-4693-a71a-7689463e7da2');
INSERT INTO public.student_college (college_id, students_id) VALUES('1', 'a5590e9d-5999-40dc-9bdf-8151df5c7c4f');

-- Ognjen slusa predmet diplomski rad
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '19');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '1');

-- Postavite AUTO-INCREMENT za NOTICEBOARD_ITEM
SELECT setval('noticeboard_item_id_seq', (SELECT MAX(id) FROM public.NOTICEBOARD_ITEM));
