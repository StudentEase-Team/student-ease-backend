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
INSERT INTO public.ADMIN_ROLES(role_id, admin_id) VALUES('3', 'b28c43a1-9faf-41ab-aab0-aae654a30833');

INSERT INTO public.STUDENT (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role, year) VALUES ('ef6adb8d-4f53-4693-a71a-7689463e7da2', 'ognjenmilojevic2001@gmail.com', 'Ognjen', 'Milojevic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '0', '4');
INSERT INTO public.STUDENT_ROLES(role_id, student_id) VALUES('1', 'ef6adb8d-4f53-4693-a71a-7689463e7da2');

INSERT INTO public.STUDENT (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role, year) VALUES ('a5590e9d-5999-40dc-9bdf-8151df5c7c4f', 'ognjenmilojevic88@gmail.com', 'Milica', 'Kljajic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '0', '1');
INSERT INTO public.STUDENT_ROLES(role_id, student_id) VALUES('1', 'a5590e9d-5999-40dc-9bdf-8151df5c7c4f');

INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'profesor1.ftn@uns.ac.rs', 'Profesorko', 'Prvakovic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');

INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('aef51b3b-c043-4ed9-89d5-14883850e170', 'profesor2.ftn@uns.ac.rs', 'Profesorko', 'Drugakovic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', 'aef51b3b-c043-4ed9-89d5-14883850e170');

INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('1', 'Fakultet tehnickih nauka', 'FTN', 'Trg Dositeja Obradovica 6, Novi Sad', '+38121450810', 'studenti@ftn.com');
INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('2', 'Pravni fakultet', 'PF', 'Trg Dositeja Obradovica 1, Novi Sad', '+381214853097', 'student@pravnifakultet.com');

INSERT INTO public.NOTICEBOARD (id, enabled, college_id) VALUES('1', 'true', '1');


-- FTN
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('1', '1', 'Analiza 1', '1');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('2', '1', 'Analiza 2', '1');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('3', '1', 'Algebra', '1');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('4', '1', 'Verovatnoca', '1');

INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('5', '1', 'Modeliranje i simulacija sistema', '2');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('6', '1', 'Logicko projektovanje sistema', '2');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('7', '1', 'Web programiranje', '2');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('8', '1', 'Objektno programiranje', '2');

INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('9', '1', 'Operativni sistemi', '3');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('10', '1', 'Sistemi automatskog upravljanja', '3');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('11', '1', 'Numericki algoritmi i numericki softver', '3');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('12', '1', 'Softverska podrska u realnom vremenu', '3');

INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('13', '1', 'Mobilne aplikcije', '4');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('14', '1', 'Internet mreze', '4');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('15', '1', 'Bezbednost', '4');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('19', '1', 'Diplomski rad', '4');

-- Ognjen slusa sve predmete (sve iz 4 a ostale polozio)
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '1');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '2');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '3');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '4');

INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '5');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '6');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '7');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '8');

INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '9');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '10');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '11');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '12');

INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '13');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '14');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '15');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('ef6adb8d-4f53-4693-a71a-7689463e7da2', '19');

-- Student 2 slusa predmete druge godine
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '1');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '2');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '3');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '4');

INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '5');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '6');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '7');
INSERT INTO public.STUDENT_SUBJECTS (student_id, subject_id) VALUES('a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '8');

-- Ocene student 1
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('1', 'ef6adb8d-4f53-4693-a71a-7689463e7da2', '1', '6', '2020-01-15');
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('2', 'ef6adb8d-4f53-4693-a71a-7689463e7da2', '2', '7', '2020-02-15');
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('3', 'ef6adb8d-4f53-4693-a71a-7689463e7da2', '3', '8', '2020-03-15');
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('4', 'ef6adb8d-4f53-4693-a71a-7689463e7da2', '4', '9', '2020-04-15');

INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('5', 'ef6adb8d-4f53-4693-a71a-7689463e7da2', '5', '9', '2021-05-15');
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('6', 'ef6adb8d-4f53-4693-a71a-7689463e7da2', '6', '8', '2021-06-15');
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('7', 'ef6adb8d-4f53-4693-a71a-7689463e7da2', '7', '7', '2021-07-15');
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('8', 'ef6adb8d-4f53-4693-a71a-7689463e7da2', '8', '6', '2021-08-15');

INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('9', 'ef6adb8d-4f53-4693-a71a-7689463e7da2', '9', '6', '2022-09-15');
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('10', 'ef6adb8d-4f53-4693-a71a-7689463e7da2', '10', '7', '2022-10-15');
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('11', 'ef6adb8d-4f53-4693-a71a-7689463e7da2', '11', '8', '2022-11-15');
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('12', 'ef6adb8d-4f53-4693-a71a-7689463e7da2', '12', '9', '2022-12-15');

INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('13', 'ef6adb8d-4f53-4693-a71a-7689463e7da2', '13', '10', '2023-01-15');

-- Ocene student 2
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('14', 'a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '1', '10', '2021-02-15');
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('15', 'a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '2', '10', '2021-03-15');
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('16', 'a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '3', '8', '2021-04-15');
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('17', 'a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '4', '10', '2021-05-15');

INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('18', 'a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '5', '10', '2022-06-15');
INSERT INTO public.GRADE (id, student_id, subject_id, value, date) VALUES('19', 'a5590e9d-5999-40dc-9bdf-8151df5c7c4f', '6', '10', '2022-07-15');


-- PRAVNI
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('21', '2', 'Rimsko pravo 1', '1');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('22', '2', 'Rimsko pravo 2', '2');
INSERT INTO public.SUBJECT (id, college_id, name, year) VALUES('29', '2', 'Diplomski rad', '4');

INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id) VALUES('Dobar dan, zanima me kada pocinje upis na fakultet?', 'Postovani, upis na fakultet pocinje nakon prijemnog ispita, 25. jula.', 'True', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id) VALUES('Postovanje, interesuje me sta je sve potrebno od dokumentacije za konkurs za studentsku stipendiju', 'Dobar dan, potrebni su vam papiri iz gradske kuce o mesecnim prihodima, kao i potvrda da ste redovan student i ukoliko imate brata/sestru moracete dostaviti istu potvrdu i za njih.', 'True', 'aef51b3b-c043-4ed9-89d5-14883850e170');
INSERT INTO public.FAQITEM (question, answer, is_answered) VALUES('Gde mogu da uplatim  novac za polaganje ispita, ako sam zakasnio sa prijavom ispita na studentskom servisu?', '', 'False');


INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id) VALUES ('1', 'Univeristy announcement', 'We are testing the new noticeboard', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, subject_id, creator_id) VALUES ('2', 'FTN Diplomski announcement', 'We are testing the new noticeboard', 'NOW()', '4', '19', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');

-- Student fakultet
INSERT INTO public.STUDENT_COLLEGE (college_id, students_id) VALUES('1', 'ef6adb8d-4f53-4693-a71a-7689463e7da2');
INSERT INTO public.STUDENT_COLLEGE (college_id, students_id) VALUES('1', 'a5590e9d-5999-40dc-9bdf-8151df5c7c4f');


-- autoincrements
SELECT setval('noticeboard_item_id_seq', (SELECT MAX(id) FROM public.NOTICEBOARD_ITEM));
SELECT setval('grade_id_seq', (SELECT MAX(id) FROM public.GRADE));
