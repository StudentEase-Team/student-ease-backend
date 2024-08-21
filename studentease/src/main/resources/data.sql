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


--public enum MaterialType {
--0        VIDEO_MATERIAL,
--1        PRESENTATION,
--2        DOCUMENT,
--3        PROGRAM,
--4        OTHER
--    }


INSERT INTO public.ADMIN (id, email, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('b28c43a1-9faf-41ab-aab0-aae654a30833', 'admin@studentease.com', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '2');
INSERT INTO public.ADMIN_ROLES(role_id, admin_id) VALUES('3', 'b28c43a1-9faf-41ab-aab0-aae654a30833');

INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('1', 'Fakultet tehnickih nauka', 'FTN', 'Trg Dositeja Obradovica 6, Novi Sad', '+38121450810', 'studenti@ftn.com');
INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('2', 'Pravni fakultet', 'PF', 'Trg Dositeja Obradovica 1, Novi Sad', '+381214853097', 'student@pravnifakultet.com');

INSERT INTO public.STUDENT (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role, year, college_id) VALUES ('ef6adb8d-4f53-4693-a71a-7689463e7da2', 'ognjenmilojevic2001@gmail.com', 'Ognjen', 'Milojevic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '0', '4', '1');
INSERT INTO public.STUDENT_ROLES(role_id, student_id) VALUES('1', 'ef6adb8d-4f53-4693-a71a-7689463e7da2');

INSERT INTO public.STUDENT (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role, year, college_id) VALUES ('a5590e9d-5999-40dc-9bdf-8151df5c7c4f', 'ognjenmilojevic88@gmail.com', 'Milica', 'Kljajic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '0', '1', '1');
INSERT INTO public.STUDENT_ROLES(role_id, student_id) VALUES('1', 'a5590e9d-5999-40dc-9bdf-8151df5c7c4f');

INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'profesor1.ftn@uns.ac.rs', 'Profesorko', 'Prvakovic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');

INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('aef51b3b-c043-4ed9-89d5-14883850e170', 'profesor2.ftn@uns.ac.rs', 'Profesorko', 'Drugakovic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', 'aef51b3b-c043-4ed9-89d5-14883850e170');

INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('661a0a8c-d334-4902-a427-6ed07e509ba7', 'profesor3.pf@uns.ac.rs', 'Profesorko', 'Trecakovic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', '661a0a8c-d334-4902-a427-6ed07e509ba7');

-- INSERT INTO public.NOTICEBOARD (id, enabled, college_id) VALUES('1', 'true', '1');


-- FTN
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('1', '1', 'Analiza 1', '1', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('2', '1', 'Analiza 2', '1', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('3', '1', 'Algebra', '1', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('4', '1', 'Verovatnoca', '1', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');

INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('5', '1', 'Modeliranje i simulacija sistema', '2', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('6', '1', 'Logicko projektovanje sistema', '2', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('7', '1', 'Web programiranje', '2', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('8', '1', 'Objektno programiranje', '2', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');

INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('9', '1', 'Operativni sistemi', '3', 'aef51b3b-c043-4ed9-89d5-14883850e170');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('10', '1', 'Sistemi automatskog upravljanja', '3', 'aef51b3b-c043-4ed9-89d5-14883850e170');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('11', '1', 'Numericki algoritmi i numericki softver', '3', 'aef51b3b-c043-4ed9-89d5-14883850e170');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('12', '1', 'Softverska podrska u realnom vremenu', '3', 'aef51b3b-c043-4ed9-89d5-14883850e170');

INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('13', '1', 'Mobilne aplikcije', '4', 'aef51b3b-c043-4ed9-89d5-14883850e170');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('14', '1', 'Internet mreze', '4', 'aef51b3b-c043-4ed9-89d5-14883850e170');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('15', '1', 'Bezbednost', '4', 'aef51b3b-c043-4ed9-89d5-14883850e170');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('19', '1', 'Diplomski rad', '4', 'aef51b3b-c043-4ed9-89d5-14883850e170');

-- PRAVNI
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('21', '2', 'Rimsko pravo 1', '1', '661a0a8c-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('22', '2', 'Rimsko pravo 2', '2', '661a0a8c-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('29', '2', 'Diplomski rad', '4', '661a0a8c-d334-4902-a427-6ed07e509ba7');

INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id) VALUES('Dobar dan, zanima me kada pocinje upis na fakultet?', 'Postovani, upis na fakultet pocinje nakon prijemnog ispita, 25. jula.', 'True', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id) VALUES('Postovanje, interesuje me sta je sve potrebno od dokumentacije za konkurs za studentsku stipendiju', 'Dobar dan, potrebni su vam papiri iz gradske kuce o mesecnim prihodima, kao i potvrda da ste redovan student i ukoliko imate brata/sestru moracete dostaviti istu potvrdu i za njih.', 'True', 'aef51b3b-c043-4ed9-89d5-14883850e170');
INSERT INTO public.FAQITEM (question, answer, is_answered) VALUES('Gde mogu da uplatim  novac za polaganje ispita, ako sam zakasnio sa prijavom ispita na studentskom servisu?', '', 'False');

-- Analiza 1 materijali

INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '1', '1', 'Dokument u kome se obradjuje konvergencija nizova', 'Granicni procesi', 'Vezbe 1', 'https://manaliza1.wordpress.com/wp-content/uploads/2022/10/i.1-1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '2', '1', 'Dokument u kome se obradjuje teorema o ukljestenju', 'Granicni procesi', 'Vezbe 2', 'https://manaliza1.wordpress.com/wp-content/uploads/2022/10/i.2-1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '3', '1', 'Dokument u kome se obradjuje granicna vrednost rekurzivnih nizova', 'Granicni procesi', 'Vezbe 3', 'https://manaliza1.wordpress.com/wp-content/uploads/2022/10/i.3-1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '4', '1', 'Dokument u kome se obradjuje kosijevi nizovi', 'Granicni procesi', 'Vezbe 4', 'https://manaliza1.wordpress.com/wp-content/uploads/2022/10/i.4-1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '5', '1', 'Dokument u kome se obradjuje granicni procesi funkcija', 'Granicni procesi', 'Vezbe 5', 'https://manaliza1.wordpress.com/wp-content/uploads/2022/10/i.5-1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '6', '1', 'Dokument u kome se obradjuje granicni procesi funkcija (neprekidnost)', 'Granicni procesi', 'Vezbe 6', 'https://manaliza1.wordpress.com/wp-content/uploads/2022/10/i.6-1.pdf');

-- Analiza 2 materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '7', '2', 'Dokument koji pokriva osnovne koncepte Analize 2', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/analiza2/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '8', '2', 'Dokument koji sadrži dodatne vežbe za Analizu 2', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/analiza2/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '9', '2', 'Test primer za pripremu za ispit iz Analize 2', 'Priprema za ispit', 'Test 1', 'https://example.com/analiza2/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '10', '2', 'Program za Analize 2', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/analiza2/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '11', '2', 'Dodatna literatura za Analizu 2', 'Dodatna literatura', 'Literatura 1', 'https://example.com/analiza2/literatura1.pdf');

-- Algebra materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '12', '3', 'Dokument koji pokriva osnovne koncepte Algebre', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/algebra/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '13', '3', 'Dokument koji sadrži dodatne vežbe za Algebru', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/algebra/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '14', '3', 'Test primer za pripremu za ispit iz Algebre', 'Priprema za ispit', 'Test 1', 'https://example.com/algebra/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '15', '3', 'Program za Algebre', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/algebra/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '16', '3', 'Dodatna literatura za Algebru', 'Dodatna literatura', 'Literatura 1', 'https://example.com/algebra/literatura1.pdf');

-- Verovatnoća materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '17', '4', 'Dokument koji pokriva osnovne koncepte Verovatnoće', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/verovatnoca/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '18', '4', 'Dokument koji sadrži dodatne vežbe za Verovatnoću', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/verovatnoca/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '19', '4', 'Test primer za pripremu za ispit iz Verovatnoće', 'Priprema za ispit', 'Test 1', 'https://example.com/verovatnoca/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '20', '4', 'Program za Verovatnoće', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/verovatnoca/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '21', '4', 'Dodatna literatura za Verovatnoću', 'Dodatna literatura', 'Literatura 1', 'https://example.com/verovatnoca/literatura1.pdf');

-- Modeliranje i simulacija sistema materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '22', '5', 'Dokument koji pokriva osnovne koncepte Modeliranja i simulacije sistema', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/modeliranje/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '23', '5', 'Dokument koji sadrži dodatne vežbe za Modeliranje i simulaciju sistema', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/modeliranje/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '24', '5', 'Test primer za pripremu za ispit iz Modeliranja i simulacije sistema', 'Priprema za ispit', 'Test 1', 'https://example.com/modeliranje/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '25', '5', 'Program za Modeliranja i simulacije sistema', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/modeliranje/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '26', '5', 'Dodatna literatura za Modeliranje i simulaciju sistema', 'Dodatna literatura', 'Literatura 1', 'https://example.com/modeliranje/literatura1.pdf');

-- Logičko projektovanje sistema materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '27', '6', 'Dokument koji pokriva osnovne koncepte Logičkog projektovanja sistema', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/logicko/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '28', '6', 'Dokument koji sadrži dodatne vežbe za Logičko projektovanje sistema', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/logicko/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '29', '6', 'Test primer za pripremu za ispit iz Logičkog projektovanja sistema', 'Priprema za ispit', 'Test 1', 'https://example.com/logicko/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '30', '6', 'Program za Logičkog projektovanja sistema', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/logicko/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '31', '6', 'Dodatna literatura za Logičko projektovanje sistema', 'Dodatna literatura', 'Literatura 1', 'https://example.com/logicko/literatura1.pdf');

-- Web programiranje materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '32', '7', 'Dokument koji pokriva osnovne koncepte Web programiranja', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/web/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '33', '7', 'Dokument koji sadrži dodatne vežbe za Web programiranje', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/web/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '34', '7', 'Test primer za pripremu za ispit iz Web programiranja', 'Priprema za ispit', 'Test 1', 'https://example.com/web/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '35', '7', 'Program za Web programiranja', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/web/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '36', '7', 'Dodatna literatura za Web programiranje', 'Dodatna literatura', 'Literatura 1', 'https://example.com/web/literatura1.pdf');

-- Objektno programiranje materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '37', '8', 'Dokument koji pokriva osnovne koncepte Objektno programiranja', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/objektno/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '38', '8', 'Dokument koji sadrži dodatne vežbe za Objektno programiranje', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/objektno/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '39', '8', 'Test primer za pripremu za ispit iz Objektno programiranja', 'Priprema za ispit', 'Test 1', 'https://example.com/objektno/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '40', '8', 'Program za Objektno programiranja', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/objektno/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '41', '8', 'Dodatna literatura za Objektno programiranje', 'Dodatna literatura', 'Literatura 1', 'https://example.com/objektno/literatura1.pdf');

-- Sistemi automatskog upravljanja materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '42', '10', 'Dokument koji pokriva osnovne koncepte Sistema automatskog upravljanja', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/automatsko/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '43', '10', 'Dokument koji sadrži dodatne vežbe za Sisteme automatskog upravljanja', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/automatsko/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '44', '10', 'Test primer za pripremu za ispit iz Sistema automatskog upravljanja', 'Priprema za ispit', 'Test 1', 'https://example.com/automatsko/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '45', '10', 'Program za Sistema automatskog upravljanja', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/automatsko/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '46', '10', 'Dodatna literatura za Sisteme automatskog upravljanja', 'Dodatna literatura', 'Literatura 1', 'https://example.com/automatsko/literatura1.pdf');

-- Numericki algoritmi i numericki softver materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '47', '11', 'Dokument koji pokriva osnovne koncepte Numeričkih algoritama i softvera', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/numericki/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '48', '11', 'Dokument koji sadrži dodatne vežbe za Numeričke algoritme i softver', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/numericki/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '49', '11', 'Test primer za pripremu za ispit iz Numeričkih algoritama i softvera', 'Priprema za ispit', 'Test 1', 'https://example.com/numericki/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '50', '11', 'Program za Numeričkih algoritama i softvera', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/numericki/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '51', '11', 'Dodatna literatura za Numeričke algoritme i softver', 'Dodatna literatura', 'Literatura 1', 'https://example.com/numericki/literatura1.pdf');

-- Softverska podrska u realnom vremenu materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '52', '12', 'Dokument koji pokriva osnovne koncepte Softverske podrške u realnom vremenu', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/realno/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '53', '12', 'Dokument koji sadrži dodatne vežbe za Softversku podršku u realnom vremenu', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/realno/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '54', '12', 'Test primer za pripremu za ispit iz Softverske podrške u realnom vremenu', 'Priprema za ispit', 'Test 1', 'https://example.com/realno/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '55', '12', 'Program za Softverske podrške u realnom vremenu', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/realno/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '56', '12', 'Dodatna literatura za Softversku podršku u realnom vremenu', 'Dodatna literatura', 'Literatura 1', 'https://example.com/realno/literatura1.pdf');

-- Mobilne aplikcije materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '57', '13', 'Dokument koji pokriva osnovne koncepte Mobilnih aplikacija', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/mobilne/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '58', '13', 'Dokument koji sadrži dodatne vežbe za Mobilne aplikacije', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/mobilne/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '59', '13', 'Test primer za pripremu za ispit iz Mobilnih aplikacija', 'Priprema za ispit', 'Test 1', 'https://example.com/mobilne/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '60', '13', 'Program za Mobilnih aplikacija', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/mobilne/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '61', '13', 'Dodatna literatura za Mobilne aplikacije', 'Dodatna literatura', 'Literatura 1', 'https://example.com/mobilne/literatura1.pdf');

-- Internet mreže materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '62', '14', 'Dokument koji pokriva osnovne koncepte Internet mreža', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/internet/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '63', '14', 'Dokument koji sadrži dodatne vežbe za Internet mreže', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/internet/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '64', '14', 'Test primer za pripremu za ispit iz Internet mreža', 'Priprema za ispit', 'Test 1', 'https://example.com/internet/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '65', '14', 'Program za Internet mreža', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/internet/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '66', '14', 'Dodatna literatura za Internet mreže', 'Dodatna literatura', 'Literatura 1', 'https://example.com/internet/literatura1.pdf');

-- Bezbednost materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '67', '15', 'Dokument koji pokriva osnovne koncepte Bezbednosti', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/bezbednost/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '68', '15', 'Dokument koji sadrži dodatne vežbe za Bezbednost', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/bezbednost/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '69', '15', 'Test primer za pripremu za ispit iz Bezbednosti', 'Priprema za ispit', 'Test 1', 'https://example.com/bezbednost/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '70', '15', 'Program za Bezbednosti', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/bezbednost/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '71', '15', 'Dodatna literatura za Bezbednost', 'Dodatna literatura', 'Literatura 1', 'https://example.com/bezbednost/literatura1.pdf');

-- Diplomski rad materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '72', '19', 'Dokument koji pokriva osnovne koncepte Diplomski rad', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/diplomski/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '73', '19', 'Dokument koji sadrži dodatne vežbe za Diplomski rad', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/diplomski/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '74', '19', 'Test primer za pripremu za ispit iz Diplomskog rada', 'Priprema za ispit', 'Test 1', 'https://example.com/diplomski/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '75', '19', 'Program za Diplomskog rada', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/diplomski/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '76', '19', 'Dodatna literatura za Diplomski rad', 'Dodatna literatura', 'Literatura 1', 'https://example.com/diplomski/literatura1.pdf');

-- Rimsko pravo 1 materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '77', '21', 'Dokument koji pokriva osnovne koncepte Rimsko pravo 1', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/rimsko1/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '78', '21', 'Dokument koji sadrži dodatne vežbe za Rimsko pravo 1', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/rimsko1/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '79', '21', 'Test primer za pripremu za ispit iz Rimsko pravo 1', 'Priprema za ispit', 'Test 1', 'https://example.com/rimsko1/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '80', '21', 'Program za Rimsko pravo 1', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/rimsko1/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '81', '21', 'Dodatna literatura za Rimsko pravo 1', 'Dodatna literatura', 'Literatura 1', 'https://example.com/rimsko1/literatura1.pdf');

-- Rimsko pravo 2 materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '82', '22', 'Dokument koji pokriva osnovne koncepte Rimsko pravo 2', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/rimsko2/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '83', '22', 'Dokument koji sadrži dodatne vežbe za Rimsko pravo 2', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/rimsko2/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '84', '22', 'Test primer za pripremu za ispit iz Rimsko pravo 2', 'Priprema za ispit', 'Test 1', 'https://example.com/rimsko2/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '85', '22', 'Program za Rimsko pravo 2', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/rimsko2/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '86', '22', 'Dodatna literatura za Rimsko pravo 2', 'Dodatna literatura', 'Literatura 1', 'https://example.com/rimsko2/literatura1.pdf');

-- Diplomski rad materijali (za fakultet 2)
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '87', '29', 'Dokument koji pokriva osnovne koncepte Diplomski rad', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/diplomski2/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '88', '29', 'Dokument koji sadrži dodatne vežbe za Diplomski rad', 'Dodatne vežbe', 'Vezbe 1', 'https://example.com/diplomski2/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '89', '29', 'Test primer za pripremu za ispit iz Diplomskog rada', 'Priprema za ispit', 'Test 1', 'https://example.com/diplomski2/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '90', '29', 'Program za Diplomskog rada', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/diplomski2/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '91', '29', 'Dodatna literatura za Diplomski rad', 'Dodatna literatura', 'Literatura 1', 'https://example.com/diplomski2/literatura1.pdf');


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

-- Obligacije za studenta 1
insert into public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES('2024-08-16 16:30:44.619000',1, '2024-08-16 15:00:44.619000',13, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Opis ovde', 'Naslov ovde', 'aef51b3b-c043-4ed9-89d5-14883850e170', 0);
insert into public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES('2024-08-16 11:00:44.619000',2, '2024-08-16 08:30:44.619000',14, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Opis ovde', 'Naslov ovde', 'aef51b3b-c043-4ed9-89d5-14883850e170', 1);
insert into public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES('2024-08-17 17:30:44.619000',3, '2024-08-17 16:30:44.619000',19, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Opis ovde', 'Naslov ovde', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);
-- Obligacije za studenta 2

INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('1', 'Univeristy announcement', 'We are testing the new noticeboard', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'ROLE_PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, subject_id, creator_id, creator_role, college_id) VALUES ('2', 'FTN Diplomski announcement', 'We are testing the new noticeboard', 'NOW()', '4', '19', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'ROLE_PROFESSOR', '1');

-- autoincrements
SELECT setval('noticeboard_item_id_seq', (SELECT MAX(id) FROM public.NOTICEBOARD_ITEM));
SELECT setval('grade_id_seq', (SELECT MAX(id) FROM public.GRADE));
