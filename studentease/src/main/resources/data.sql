-- noinspection SqlNoDataSourceInspectionForFile

-- noinspection SqlNoDataSourceInspectionForFile

INSERT INTO public.ROLE (name) VALUES ('ROLE_STUDENT');
INSERT INTO public.ROLE (name) VALUES ('ROLE_PROFESSOR');
INSERT INTO public.ROLE (name) VALUES ('ROLE_ADMIN');

--export enum UserRole {
--    STUDENT = 'STUDENT',
--    PROFESSOR = 'PROFESSOR',
--    ADMIN = 'ADMIN',
--}


INSERT INTO public.ADMIN (id, email, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('b28c43a1-9faf-41ab-aab0-aae654a30833', 'admin@studentease.com', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '2');
INSERT INTO public.admin_roles(role_id, admin_id) VALUES('3', 'b28c43a1-9faf-41ab-aab0-aae654a30833');

INSERT INTO public.STUDENT (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('ef6adb8d-4f53-4693-a71a-7689463e7da2', 'milojevic.ra233.2020@uns.ac.rs', 'Ognjen', 'Milojevic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '0');
INSERT INTO public.student_roles(role_id, student_id) VALUES('1', 'ef6adb8d-4f53-4693-a71a-7689463e7da2');

INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('1', 'Fakultet tehnickih nauka', 'FTN', 'Trg Dositeja Obradovica 6, Novi Sad', '+38121450810', 'studenti@ftn.com');
INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('2', 'Pravni fakultet', 'PF', 'Trg Dositeja Obradovica 1, Novi Sad', '+381214853097', 'student@pravnifakultet.com');

INSERT INTO public.NOTICEBOARD (id, enabled, college_id) VALUES('1', 'true', '1');


INSERT INTO public.SUBJECT (id, college_id, name) VALUES('19', '1', 'Diplomski rad');

INSERT INTO public.SUBJECT (id, college_id, name) VALUES('21', '2', 'Rimsko pravo 1');
INSERT INTO public.SUBJECT (id, college_id, name) VALUES('22', '2', 'Rimsko pravo 2');
INSERT INTO public.SUBJECT (id, college_id, name) VALUES('29', '2', 'Diplomski rad');

INSERT INTO public.FAQITEM (question, answer, is_answered) VALUES('Dobar dan, zanima me kada pocinje upis na fakultet?', 'Postovani, upis na fakultet pocinje nakon prijemnog ispita, 25. jula.', 'True');
INSERT INTO public.FAQITEM (question, answer, is_answered) VALUES('Postovanje, interesuje me sta je sve potrebno od dokumentacije za konkurs za studentsku stipendiju', 'Dobar dan, potrebni su vam papiri iz gradske kuce o mesecnim prihodima, kao i potvrda da ste redovan student i ukoliko imate brata/sestru moracete dostaviti istu potvrdu i za njih.', 'True');
INSERT INTO public.FAQITEM (question, answer, is_answered) VALUES('Gde mogu da uplatim  novac za polaganje ispita, ako sam zakasnio sa prijavom ispita na studentskom servisu?', '', 'False');


INSERT INTO public.NOTICEBOARD_ITEM (id, noticeboard_id, title, message, updated_at, category) VALUES ('0', '1', 'Univeristy announcement', 'We are testing the new noticeboard', 'NOW()', '0');
INSERT INTO public.NOTICEBOARD_ITEM (id, noticeboard_id, title, message, updated_at, category, subject_id) VALUES ('1', '1', 'FTN Diplomski announcement', 'We are testing the new noticeboard', 'NOW()', '0', '19');

INSERT INTO public.student_college (college_id, students_id) VALUES('1', 'ef6adb8d-4f53-4693-a71a-7689463e7da2');

-- Ognjen slusa predmet diplomski rad
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '19');
