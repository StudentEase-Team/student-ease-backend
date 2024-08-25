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

--public enum ObligationCategory {
--0        LECTURE,
--1        EXERCISE,
--2        EXAM
--    }

INSERT INTO public.ADMIN (id, email, password, is_enabled, is_locked, credentials_updated_at, user_role) VALUES ('b28c43a1-9faf-41ab-aab0-aae654a30833', 'admin@studentease.com', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '2');
INSERT INTO public.ADMIN_ROLES(role_id, admin_id) VALUES('3', 'b28c43a1-9faf-41ab-aab0-aae654a30833');

INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('1', 'Fakultet tehnickih nauka', 'FTN', 'Trg Dositeja Obradovica 6, Novi Sad', '+38121450810', 'studenti@ftn.com');
INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('2', 'Pravni fakultet', 'PF', 'Trg Dositeja Obradovica 1, Novi Sad', '+381214853097', 'student@pravnifakultet.com');
INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('3', 'Filozofski fakultet', 'FF', 'Dr Zorana Djindjica 2, Novi Sad', '+38121455502', 'studenti@ff.uns.ac.rs');
INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('4', 'Tehnoloski fakultet', 'TF', 'Bul cara Lazara 1, Novi Sad', '+381214853720', 'studenti@tf.uns.ac.rs');
INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('5', 'Poljoprivredni fakultet', 'POLJ', 'Trg Dositeja Obradovica 8, Novi Sad', '+381214850321', 'studenti@polj.uns.ac.rs');
INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('6', 'Fakultet sporta i fizickog vaspitanja', 'DIF', 'Lovcenska 16, Novi Sad', '+381214854900', 'studenti@dif.uns.ac.rs');
INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('7', 'Prirodno-matematicki fakultet', 'PMF', 'Trg Dositeja Obradovica 4, Novi Sad', '+381214850500', 'studenti@pmf.uns.ac.rs');
INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('8', 'Ekonomski fakultet', 'EKOF', 'Segedinski put 9-11, Novi Sad', '+381214852506', 'studenti@ekof.uns.ac.rs');
INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('9', 'Akademija umetnosti', 'AU', 'Kosovska 33, Novi Sad', '+381214209500', 'studenti@au.uns.ac.rs');
INSERT INTO public.COLLEGE (id, name, abbreviation, address, phone_number, email) VALUES ('10', 'Medicinski fakultet', 'MF', 'Hajduk Veljkova 3, Novi Sad', '+38121420299', 'studenti@mf.uns.ac.rs');


INSERT INTO public.STUDENT (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role, year, college_id)
VALUES ('ef6adb8d-4f53-4693-a71a-7689463e7da2', 'ognjenmilojevic2001@gmail.com', 'Ognjen', 'Milojevic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '0', '4', '1');
INSERT INTO public.STUDENT_ROLES(role_id, student_id) VALUES('1', 'ef6adb8d-4f53-4693-a71a-7689463e7da2');

INSERT INTO public.STUDENT (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role, year, college_id)
VALUES ('a5590e9d-5999-40dc-9bdf-8151df5c7c4f', 'ognjenmilojevic88@gmail.com', 'Milica', 'Kljajic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '0', '1', '1');
INSERT INTO public.STUDENT_ROLES(role_id, student_id) VALUES('1', 'a5590e9d-5999-40dc-9bdf-8151df5c7c4f');

-- FAKULTET TEHNICKIH NAUKA (FTN)
INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role)
VALUES ('2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'profesor1.ftn@uns.ac.rs', 'Profesorko', 'Prvakovic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630');

INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role)
VALUES ('aef51b3b-c043-4ed9-89d5-14883850e170', 'profesor2.ftn@uns.ac.rs', 'Profesorko', 'Drugakovic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', 'aef51b3b-c043-4ed9-89d5-14883850e170');

-- PRAVNI FAKULTET
INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role)
VALUES ('661a0a8c-d334-4902-a427-6ed07e509ba7', 'profesor3.pf@uns.ac.rs', 'Profesorko', 'Trecakovic', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()', '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', '661a0a8c-d334-4902-a427-6ed07e509ba7');

-- FILOZOFSKI FAKULTET
INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role)
VALUES ('00000002-d334-4902-a427-6ed07e509ba7', 'profesor1.ff@uns.ac.rs', 'Jovan', 'Marković', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', NOW(), '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', '00000002-d334-4902-a427-6ed07e509ba7');

-- TEHNOLOSKI FAKULTET
INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role)
VALUES ('00000003-d334-4902-a427-6ed07e509ba7', 'profesor1.tf@uns.ac.rs', 'Zoran', 'Mitić', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', NOW(), '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', '00000003-d334-4902-a427-6ed07e509ba7');

-- POLJOPRIVREDNI FAKULTET
INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role)
VALUES ('00000004-d334-4902-a427-6ed07e509ba7', 'profesor1.polj@uns.ac.rs', 'Nikola', 'Jovanović', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', NOW(), '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', '00000004-d334-4902-a427-6ed07e509ba7');

-- FAKULTET SPORTA I FIZICKOG VASPITANJA (DIF)
INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role)
VALUES ('00000005-d334-4902-a427-6ed07e509ba7', 'profesor1.dif@uns.ac.rs', 'Petar', 'Kostić', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', NOW(), '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', '00000005-d334-4902-a427-6ed07e509ba7');

-- PRIRODNO-MATEMATICKI FAKULTET (PMF)
INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role)
VALUES ('00000006-d334-4902-a427-6ed07e509ba7', 'profesor1.pmf@uns.ac.rs', 'Vladimir', 'Nikolić', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', NOW(), '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', '00000006-d334-4902-a427-6ed07e509ba7');

-- EKONOMSKI FAKULTET
INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role)
VALUES ('00000007-d334-4902-a427-6ed07e509ba7', 'profesor1.ekof@uns.ac.rs', 'Milan', 'Vasić', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', NOW(), '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', '00000007-d334-4902-a427-6ed07e509ba7');

-- AKADEMIJA UMETNOSTI
INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role)
VALUES ('00000008-d334-4902-a427-6ed07e509ba7', 'profesor1.au@uns.ac.rs', 'Ivana', 'Savić', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', NOW(), '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', '00000008-d334-4902-a427-6ed07e509ba7');

-- MEDICINSKI FAKULTET
INSERT INTO public.PROFESSOR (id, email, first_name, last_name, password, is_enabled, is_locked, credentials_updated_at, user_role)
VALUES ('00000009-d334-4902-a427-6ed07e509ba7', 'profesor1.mf@uns.ac.rs', 'Marko', 'Lukić', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', NOW(), '1');
INSERT INTO public.PROFESSOR_ROLES(role_id, professor_id) VALUES('2', '00000009-d334-4902-a427-6ed07e509ba7');


-- FAKULTET TEHNICKIH NAUKA (FTN)
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

-- PRAVNI FAKULTET
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('21', '2', 'Rimsko pravo 1', '1', '661a0a8c-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('22', '2', 'Rimsko pravo 2', '2', '661a0a8c-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES('29', '2', 'Diplomski rad', '4', '661a0a8c-d334-4902-a427-6ed07e509ba7');

-- FILOZOFSKI FAKULTET
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('33', '3', 'Istorija filozofije', '1', '00000002-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('34', '3', 'Sociologija', '2', '00000002-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('35', '3', 'Psihologija', '3', '00000002-d334-4902-a427-6ed07e509ba7');

-- TEHNOLOSKI FAKULTET
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('36', '4', 'Hemija hrane', '1', '00000003-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('37', '4', 'Tehnologija pića', '2', '00000003-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('38', '4', 'Procesna tehnika', '3', '00000003-d334-4902-a427-6ed07e509ba7');

-- POLJOPRIVREDNI FAKULTET
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('39', '5', 'Poljoprivredna tehnika', '1', '00000004-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('40', '5', 'Ekonomika poljoprivrede', '2', '00000004-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('41', '5', 'Biljna proizvodnja', '3', '00000004-d334-4902-a427-6ed07e509ba7');

-- FAKULTET SPORTA I FIZICKOG VASPITANJA (DIF)
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('42', '6', 'Metodika sporta', '1', '00000005-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('43', '6', 'Sportska medicina', '2', '00000005-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('44', '6', 'Teorija treninga', '3', '00000005-d334-4902-a427-6ed07e509ba7');

-- PRIRODNO-MATEMATICKI FAKULTET (PMF)
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('45', '7', 'Matematika 1', '1', '00000006-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('46', '7', 'Fizika 1', '2', '00000006-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('47', '7', 'Hemija', '3', '00000006-d334-4902-a427-6ed07e509ba7');

-- EKONOMSKI FAKULTET
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('48', '8', 'Osnovi ekonomije', '1', '00000007-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('49', '8', 'Mikroekonomija', '2', '00000007-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('50', '8', 'Makroekonomija', '3', '00000007-d334-4902-a427-6ed07e509ba7');

-- AKADEMIJA UMETNOSTI
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('51', '9', 'Istorija umetnosti', '1', '00000008-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('52', '9', 'Slikarstvo', '2', '00000008-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('53', '9', 'Kiparstvo', '3', '00000008-d334-4902-a427-6ed07e509ba7');

-- MEDICINSKI FAKULTET
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('54', '10', 'Anatomija', '1', '00000009-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('55', '10', 'Patologija', '2', '00000009-d334-4902-a427-6ed07e509ba7');
INSERT INTO public.SUBJECT (id, college_id, name, year, professor_id) VALUES ('56', '10', 'Farmakologija', '3', '00000009-d334-4902-a427-6ed07e509ba7');

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

-- Istorija filozofije materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '92', '33', 'Dokument koji pokriva osnovne koncepte iz Istorije filozofije', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/istorijafilozofije/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '93', '33', 'Dokument koji sadrži dodatne vežbe iz Istorije filozofije', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/istorijafilozofije/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '94', '33', 'Test primer za pripremu za ispit iz Istorije filozofije', 'Priprema za ispit', 'Test 1', 'https://example.com/istorijafilozofije/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '95', '33', 'Program za Istoriju filozofije', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/istorijafilozofije/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '96', '33', 'Dodatna literatura za Istoriju filozofije', 'Dodatna literatura', 'Literatura 1', 'https://example.com/istorijafilozofije/literatura1.pdf');

-- Sociologija materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '97', '34', 'Dokument koji pokriva osnovne koncepte iz Sociologije', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/sociologija/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '98', '34', 'Dokument koji sadrži dodatne vežbe iz Sociologije', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/sociologija/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '99', '34', 'Test primer za pripremu za ispit iz Sociologije', 'Priprema za ispit', 'Test 1', 'https://example.com/sociologija/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '100', '34', 'Program za Sociologiju', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/sociologija/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '101', '34', 'Dodatna literatura za Sociologiju', 'Dodatna literatura', 'Literatura 1', 'https://example.com/sociologija/literatura1.pdf');

-- Psihologija materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '102', '35', 'Dokument koji pokriva osnovne koncepte iz Psihologije', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/psihologija/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '103', '35', 'Dokument koji sadrži dodatne vežbe iz Psihologije', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/psihologija/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '104', '35', 'Test primer za pripremu za ispit iz Psihologije', 'Priprema za ispit', 'Test 1', 'https://example.com/psihologija/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '105', '35', 'Program za Psihologiju', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/psihologija/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '106', '35', 'Dodatna literatura za Psihologiju', 'Dodatna literatura', 'Literatura 1', 'https://example.com/psihologija/literatura1.pdf');

-- Hemija hrane materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '107', '36', 'Dokument koji pokriva osnovne koncepte iz Hemije hrane', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/hemijahrane/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '108', '36', 'Dokument koji sadrži dodatne vežbe iz Hemije hrane', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/hemijahrane/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '109', '36', 'Test primer za pripremu za ispit iz Hemije hrane', 'Priprema za ispit', 'Test 1', 'https://example.com/hemijahrane/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '110', '36', 'Program za Hemiju hrane', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/hemijahrane/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '111', '36', 'Dodatna literatura za Hemiju hrane', 'Dodatna literatura', 'Literatura 1', 'https://example.com/hemijahrane/literatura1.pdf');

-- Tehnologije pica materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '112', '37', 'Dokument koji pokriva osnovne koncepte iz Tehnologije pića', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/tehnologijapica/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '113', '37', 'Dokument koji sadrži dodatne vežbe iz Tehnologije pića', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/tehnologijapica/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '114', '37', 'Test primer za pripremu za ispit iz Tehnologije pića', 'Priprema za ispit', 'Test 1', 'https://example.com/tehnologijapica/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '115', '37', 'Program za Tehnologiju pića', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/tehnologijapica/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '116', '37', 'Dodatna literatura za Tehnologiju pića', 'Dodatna literatura', 'Literatura 1', 'https://example.com/tehnologijapica/literatura1.pdf');

-- Procesne tehnike materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '117', '38', 'Dokument koji pokriva osnovne koncepte iz Procesne tehnike', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/procesnatehnika/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '118', '38', 'Dokument koji sadrži dodatne vežbe iz Procesne tehnike', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/procesnatehnika/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '119', '38', 'Test primer za pripremu za ispit iz Procesne tehnike', 'Priprema za ispit', 'Test 1', 'https://example.com/procesnatehnika/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '120', '38', 'Program za Procesnu tehniku', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/procesnatehnika/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '121', '38', 'Dodatna literatura za Procesnu tehniku', 'Dodatna literatura', 'Literatura 1', 'https://example.com/procesnatehnika/literatura1.pdf');

-- Poljoprivredna tehnika materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '122', '39', 'Dokument koji pokriva osnovne koncepte iz Poljoprivredne tehnike', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/poljoprivrednatehnika/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '123', '39', 'Dokument koji sadrži dodatne vežbe iz Poljoprivredne tehnike', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/poljoprivrednatehnika/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '124', '39', 'Test primer za pripremu za ispit iz Poljoprivredne tehnike', 'Priprema za ispit', 'Test 1', 'https://example.com/poljoprivrednatehnika/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '125', '39', 'Program za Poljoprivrednu tehniku', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/poljoprivrednatehnika/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '126', '39', 'Dodatna literatura za Poljoprivrednu tehniku', 'Dodatna literatura', 'Literatura 1', 'https://example.com/poljoprivrednatehnika/literatura1.pdf');

-- Ekonomika poljoprivrede materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '127', '40', 'Dokument koji pokriva osnovne koncepte iz Ekonomike poljoprivrede', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/ekonomikapoljoprivrede/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '128', '40', 'Dokument koji sadrži dodatne vežbe iz Ekonomike poljoprivrede', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/ekonomikapoljoprivrede/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '129', '40', 'Test primer za pripremu za ispit iz Ekonomike poljoprivrede', 'Priprema za ispit', 'Test 1', 'https://example.com/ekonomikapoljoprivrede/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '130', '40', 'Program za Ekonomiku poljoprivrede', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/ekonomikapoljoprivrede/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '131', '40', 'Dodatna literatura za Ekonomiku poljoprivrede', 'Dodatna literatura', 'Literatura 1', 'https://example.com/ekonomikapoljoprivrede/literatura1.pdf');

-- Biljna proizvodnja materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '132', '41', 'Dokument koji pokriva osnovne koncepte iz Biljne proizvodnje', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/biljnaproizvodnja/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '133', '41', 'Dokument koji sadrži dodatne vežbe iz Biljne proizvodnje', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/biljnaproizvodnja/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '134', '41', 'Test primer za pripremu za ispit iz Biljne proizvodnje', 'Priprema za ispit', 'Test 1', 'https://example.com/biljnaproizvodnja/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '135', '41', 'Program za Biljnu proizvodnju', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/biljnaproizvodnja/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '136', '41', 'Dodatna literatura za Biljnu proizvodnju', 'Dodatna literatura', 'Literatura 1', 'https://example.com/biljnaproizvodnja/literatura1.pdf');

-- Matodike sporta materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '137', '42', 'Dokument koji pokriva osnovne koncepte iz Metodike sporta', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/metodikasporta/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '138', '42', 'Dokument koji sadrži dodatne vežbe iz Metodike sporta', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/metodikasporta/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '139', '42', 'Test primer za pripremu za ispit iz Metodike sporta', 'Priprema za ispit', 'Test 1', 'https://example.com/metodikasporta/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '140', '42', 'Program za Metodiku sporta', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/metodikasporta/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '141', '42', 'Dodatna literatura za Metodiku sporta', 'Dodatna literatura', 'Literatura 1', 'https://example.com/metodikasporta/literatura1.pdf');

-- Sportska medicina materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '142', '43', 'Dokument koji pokriva osnovne koncepte iz Sportske medicine', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/sportskamedenina/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '143', '43', 'Dokument koji sadrži dodatne vežbe iz Sportske medicine', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/sportskamedenina/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '144', '43', 'Test primer za pripremu za ispit iz Sportske medicine', 'Priprema za ispit', 'Test 1', 'https://example.com/sportskamedenina/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '145', '43', 'Program za Sportsku medicinu', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/sportskamedenina/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '146', '43', 'Dodatna literatura za Sportsku medicinu', 'Dodatna literatura', 'Literatura 1', 'https://example.com/sportskamedenina/literatura1.pdf');

-- Teorija treninga materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '147', '44', 'Dokument koji pokriva osnovne koncepte iz Teorije treninga', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/teorijatraininga/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '148', '44', 'Dokument koji sadrži dodatne vežbe iz Teorije treninga', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/teorijatraininga/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '149', '44', 'Test primer za pripremu za ispit iz Teorije treninga', 'Priprema za ispit', 'Test 1', 'https://example.com/teorijatraininga/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '150', '44', 'Program za Teoriju treninga', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/teorijatraininga/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '151', '44', 'Dodatna literatura za Teoriju treninga', 'Dodatna literatura', 'Literatura 1', 'https://example.com/teorijatraininga/literatura1.pdf');

-- Matematika 1 materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '152', '45', 'Dokument koji pokriva osnovne koncepte iz Matematike 1', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/matematika1/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '153', '45', 'Dokument koji sadrži dodatne vežbe za Matematiku 1', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/matematika1/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '154', '45', 'Test primer za pripremu za ispit iz Matematike 1', 'Priprema za ispit', 'Test 1', 'https://example.com/matematika1/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '155', '45', 'Program za Matematiku 1', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/matematika1/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '156', '45', 'Dodatna literatura za Matematiku 1', 'Dodatna literatura', 'Literatura 1', 'https://example.com/matematika1/literatura1.pdf');

-- Fizika 1 materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '157', '46', 'Dokument koji pokriva osnovne koncepte iz Fizike 1', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/fizika1/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '158', '46', 'Dokument koji sadrži dodatne vežbe za Fiziku 1', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/fizika1/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '159', '46', 'Test primer za pripremu za ispit iz Fizike 1', 'Priprema za ispit', 'Test 1', 'https://example.com/fizika1/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '160', '46', 'Program za Fiziku 1', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/fizika1/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '161', '46', 'Dodatna literatura za Fiziku 1', 'Dodatna literatura', 'Literatura 1', 'https://example.com/fizika1/literatura1.pdf');

-- Hemija materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '162', '47', 'Dokument koji pokriva osnovne koncepte iz Hemije', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/hemija/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '163', '47', 'Dokument koji sadrži dodatne vežbe za Hemiju', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/hemija/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '164', '47', 'Test primer za pripremu za ispit iz Hemije', 'Priprema za ispit', 'Test 1', 'https://example.com/hemija/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '165', '47', 'Program za Hemiju', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/hemija/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '166', '47', 'Dodatna literatura za Hemiju', 'Dodatna literatura', 'Literatura 1', 'https://example.com/hemija/literatura1.pdf');

-- Osnovi ekonomije materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '167', '48', 'Dokument koji pokriva osnovne koncepte iz Osnova ekonomije', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/ekonomija/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '168', '48', 'Dokument koji sadrži dodatne vežbe za Osnove ekonomije', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/ekonomija/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '169', '48', 'Test primer za pripremu za ispit iz Osnova ekonomije', 'Priprema za ispit', 'Test 1', 'https://example.com/ekonomija/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '170', '48', 'Program za Osnove ekonomije', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/ekonomija/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '171', '48', 'Dodatna literatura za Osnove ekonomije', 'Dodatna literatura', 'Literatura 1', 'https://example.com/ekonomija/literatura1.pdf');
-- Mikroekonomija materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '172', '49', 'Dokument koji pokriva osnovne koncepte iz Mikroekonomije', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/mikroekonomija/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '173', '49', 'Dokument koji sadrži dodatne vežbe za Mikroekonomiju', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/mikroekonomija/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '174', '49', 'Test primer za pripremu za ispit iz Mikroekonomije', 'Priprema za ispit', 'Test 1', 'https://example.com/mikroekonomija/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '175', '49', 'Program za Mikroekonomiju', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/mikroekonomija/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '176', '49', 'Dodatna literatura za Mikroekonomiju', 'Dodatna literatura', 'Literatura 1', 'https://example.com/mikroekonomija/literatura1.pdf');

-- Makroekonomija materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '177', '50', 'Dokument koji pokriva osnovne koncepte iz Makroekonomije', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/makroekonomija/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '178', '50', 'Dokument koji sadrži dodatne vežbe za Makroekonomiju', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/makroekonomija/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '179', '50', 'Test primer za pripremu za ispit iz Makroekonomije', 'Priprema za ispit', 'Test 1', 'https://example.com/makroekonomija/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '180', '50', 'Program za Makroekonomiju', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/makroekonomija/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '181', '50', 'Dodatna literatura za Makroekonomiju', 'Dodatna literatura', 'Literatura 1', 'https://example.com/makroekonomija/literatura1.pdf');

-- Istorija umetnosti materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '182', '51', 'Dokument koji pokriva osnovne koncepte iz Istorije umetnosti', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/istorija_umetnosti/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '183', '51', 'Dokument koji sadrži dodatne vežbe za Istoriju umetnosti', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/istorija_umetnosti/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '184', '51', 'Test primer za pripremu za ispit iz Istorije umetnosti', 'Priprema za ispit', 'Test 1', 'https://example.com/istorija_umetnosti/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '185', '51', 'Program za Istoriju umetnosti', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/istorija_umetnosti/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '186', '51', 'Dodatna literatura za Istoriju umetnosti', 'Dodatna literatura', 'Literatura 1', 'https://example.com/istorija_umetnosti/literatura1.pdf');

-- Slikarstvo materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '187', '52', 'Dokument koji pokriva osnovne koncepte iz Slikarstva', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/slikarstvo/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '188', '52', 'Dokument koji sadrži dodatne vežbe za Slikarstvo', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/slikarstvo/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '189', '52', 'Test primer za pripremu za ispit iz Slikarstva', 'Priprema za ispit', 'Test 1', 'https://example.com/slikarstvo/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '190', '52', 'Program za Slikarstvo', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/slikarstvo/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '191', '52', 'Dodatna literatura za Slikarstvo', 'Dodatna literatura', 'Literatura 1', 'https://example.com/slikarstvo/literatura1.pdf');

-- Kiparstvo materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '192', '53', 'Dokument koji pokriva osnovne koncepte iz Kiparstva', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/kiparstvo/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '193', '53', 'Dokument koji sadrži dodatne vežbe za Kiparstvo', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/kiparstvo/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '194', '53', 'Test primer za pripremu za ispit iz Kiparstva', 'Priprema za ispit', 'Test 1', 'https://example.com/kiparstvo/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '195', '53', 'Program za Kiparstvo', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/kiparstvo/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '196', '53', 'Dodatna literatura za Kiparstvo', 'Dodatna literatura', 'Literatura 1', 'https://example.com/kiparstvo/literatura1.pdf');

-- Anatomija materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '197', '54', 'Dokument koji pokriva osnovne koncepte iz Anatomije', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/anatomija/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '198', '54', 'Dokument koji sadrži dodatne vežbe za Anatomiju', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/anatomija/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '199', '54', 'Test primer za pripremu za ispit iz Anatomije', 'Priprema za ispit', 'Test 1', 'https://example.com/anatomija/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '200', '54', 'Program za Anatomiju', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/anatomija/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '201', '54', 'Dodatna literatura za Anatomiju', 'Dodatna literatura', 'Literatura 1', 'https://example.com/anatomija/literatura1.pdf');

-- Patologija materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '202', '55', 'Dokument koji pokriva osnovne koncepte iz Patologije', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/patologija/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '203', '55', 'Dokument koji sadrži dodatne vežbe za Patologiju', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/patologija/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '204', '55', 'Test primer za pripremu za ispit iz Patologije', 'Priprema za ispit', 'Test 1', 'https://example.com/patologija/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '205', '55', 'Program za Patologiju', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/patologija/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '206', '55', 'Dodatna literatura za Patologiju', 'Dodatna literatura', 'Literatura 1', 'https://example.com/patologija/literatura1.pdf');

-- Farmakologija materijali
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (0, '207', '56', 'Dokument koji pokriva osnovne koncepte iz Farmakologije', 'Osnovni koncepti', 'Predavanje 1', 'https://example.com/farmakologija/predavanje1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (1, '208', '56', 'Dokument koji sadrži dodatne vežbe za Farmakologiju', 'Dodatne vežbe', 'Vežbe 1', 'https://example.com/farmakologija/vezbe1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (2, '209', '56', 'Test primer za pripremu za ispit iz Farmakologije', 'Priprema za ispit', 'Test 1', 'https://example.com/farmakologija/test1.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (3, '210', '56', 'Program za Farmakologiju', 'Prethodni ispiti', 'Ispitna pitanja', 'https://example.com/farmakologija/ispitnapitanja.pdf');
INSERT INTO public.MATERIAL (material_type, id, subject_id, description, about, name, url) VALUES (4, '211', '56', 'Dodatna literatura za Farmakologiju', 'Dodatna literatura', 'Literatura 1', 'https://example.com/farmakologija/literatura1.pdf');


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
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-09-20 16:30:00', 1, '2024-09-20 15:00:00', 14, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Predavanje iz Internet mreža', 'Predavanje iz Internet mreža', 'aef51b3b-c043-4ed9-89d5-14883850e170', 0);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-09-27 16:30:00', 2, '2024-09-27 15:00:00', 14, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Vežbe iz Internet mreža', 'Vežbe iz Internet mreža', 'aef51b3b-c043-4ed9-89d5-14883850e170', 1);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-10-05 16:30:00', 3, '2024-10-05 15:00:00', 15, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Predavanje iz Bezbednosti', 'Predavanje iz Bezbednosti', 'aef51b3b-c043-4ed9-89d5-14883850e170', 0);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-10-12 16:30:00', 4, '2024-10-12 15:00:00', 15, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Vežbe iz Bezbednosti', 'Vežbe iz Bezbednosti', 'aef51b3b-c043-4ed9-89d5-14883850e170', 1);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-09-30 16:30:00', 5, '2024-09-30 15:00:00', 14, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Kolokvijum 1 iz Internet mreža', 'Kolokvijum 1 iz Internet mreža', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-10-21 16:30:00', 6, '2024-10-21 15:00:00', 14, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Kolokvijum 2 iz Internet mreža', 'Kolokvijum 2 iz Internet mreža', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-11-11 16:30:00', 7, '2024-11-11 15:00:00', 14, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Kolokvijum 3 iz Internet mreža', 'Kolokvijum 3 iz Internet mreža', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-12-02 16:30:00', 8, '2024-12-02 15:00:00', 14, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Rok za usmeni ispit iz Internet mreža', 'Rok za usmeni ispit iz Internet mreža 1', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-12-09 16:30:00', 9, '2024-12-09 15:00:00', 14, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Rok za usmeni ispit iz Internet mreža', 'Rok za usmeni ispit iz Internet mreža 2', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-12-16 16:30:00', 10, '2024-12-16 15:00:00', 14, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Rok za usmeni ispit iz Internet mreža', 'Rok za usmeni ispit iz Internet mreža 3', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);

INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-10-01 16:30:00', 11, '2024-10-01 15:00:00', 15, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Kolokvijum 1 iz Bezbednosti', 'Kolokvijum 1 iz Bezbednosti', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-10-22 16:30:00', 12, '2024-10-22 15:00:00', 15, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Kolokvijum 2 iz Bezbednosti', 'Kolokvijum 2 iz Bezbednosti', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-11-12 16:30:00', 13, '2024-11-12 15:00:00', 15, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Kolokvijum 3 iz Bezbednosti', 'Kolokvijum 3 iz Bezbednosti', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-12-03 16:30:00', 14, '2024-12-03 15:00:00', 15, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Rok za usmeni ispit iz Bezbednosti', 'Rok za usmeni ispit iz Bezbednosti 1', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-12-10 16:30:00', 15, '2024-12-10 15:00:00', 15, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Rok za usmeni ispit iz Bezbednosti', 'Rok za usmeni ispit iz Bezbednosti 2', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-12-17 16:30:00', 16, '2024-12-17 15:00:00', 15, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Rok za usmeni ispit iz Bezbednosti', 'Rok za usmeni ispit iz Bezbednosti 3', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, student_id, description, title, professor_id, category) VALUES ('2024-12-30 16:30:00', 17, '2024-12-30 15:00:00', 19, 'ef6adb8d-4f53-4693-a71a-7689463e7da2', 'Rok za predaju diplomskog rada', 'Rok za predaju diplomskog rada', 'aef51b3b-c043-4ed9-89d5-14883850e170', 2);

-- Obligacije za profesora
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, professor_id, description, title, category) VALUES ('2024-09-20 16:30:00', 18, '2024-09-20 15:00:00', 14, 'aef51b3b-c043-4ed9-89d5-14883850e170', 'Predavanje iz Internet mreža', 'Predavanje iz Internet mreža', 0);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, professor_id, description, title, category) VALUES ('2024-09-27 16:30:00', 19, '2024-09-27 15:00:00', 14, 'aef51b3b-c043-4ed9-89d5-14883850e170', 'Vežbe iz Internet mreža', 'Vežbe iz Internet mreža', 1);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, professor_id, description, title, category) VALUES ('2024-10-05 16:30:00', 20, '2024-10-05 15:00:00', 15, 'aef51b3b-c043-4ed9-89d5-14883850e170', 'Predavanje iz Bezbednosti', 'Predavanje iz Bezbednosti', 0);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, professor_id, description, title, category) VALUES ('2024-10-12 16:30:00', 21, '2024-10-12 15:00:00', 15, 'aef51b3b-c043-4ed9-89d5-14883850e170', 'Vežbe iz Bezbednosti', 'Vežbe iz Bezbednosti', 1);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, professor_id, description, title, category) VALUES ('2024-08-30 16:30:00', 22, '2024-08-30 15:00:00', 14, 'aef51b3b-c043-4ed9-89d5-14883850e170', 'Kolokvijum 1 iz Internet mreža', 'Kolokvijum 1 iz Internet mreža', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, professor_id, description, title, category) VALUES ('2024-09-06 16:30:00', 23, '2024-09-06 15:00:00', 14, 'aef51b3b-c043-4ed9-89d5-14883850e170', 'Kolokvijum 2 iz Internet mreža', 'Kolokvijum 2 iz Internet mreža', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, professor_id, description, title, category) VALUES ('2024-09-13 16:30:00', 24, '2024-09-13 15:00:00', 14, 'aef51b3b-c043-4ed9-89d5-14883850e170', 'Kolokvijum 3 iz Internet mreža', 'Kolokvijum 3 iz Internet mreža', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, professor_id, description, title, category) VALUES ('2024-09-20 16:30:00', 25, '2024-09-20 15:00:00', 14, 'aef51b3b-c043-4ed9-89d5-14883850e170', 'Rok za usmeni ispit iz Internet mreža', 'Rok za usmeni ispit iz Internet mreža 1', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, professor_id, description, title, category) VALUES ('2024-08-31 16:30:00', 26, '2024-08-31 15:00:00', 15, 'aef51b3b-c043-4ed9-89d5-14883850e170', 'Kolokvijum 1 iz Bezbednosti', 'Kolokvijum 1 iz Bezbednosti', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, professor_id, description, title, category) VALUES ('2024-09-07 16:30:00', 27, '2024-09-07 15:00:00', 15, 'aef51b3b-c043-4ed9-89d5-14883850e170', 'Kolokvijum 2 iz Bezbednosti', 'Kolokvijum 2 iz Bezbednosti', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, professor_id, description, title, category) VALUES ('2024-09-14 16:30:00', 28, '2024-09-14 15:00:00', 15, 'aef51b3b-c043-4ed9-89d5-14883850e170', 'Kolokvijum 3 iz Bezbednosti', 'Kolokvijum 3 iz Bezbednosti', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, professor_id, description, title, category) VALUES ('2024-09-21 16:30:00', 29, '2024-09-21 15:00:00', 15, 'aef51b3b-c043-4ed9-89d5-14883850e170', 'Rok za usmeni ispit iz Bezbednosti', 'Rok za usmeni ispit iz Bezbednosti 1', 2);
INSERT INTO public.OBLIGATION (end_date, id, start_date, subject_id, professor_id, description, title, category) VALUES ('2024-09-30 16:30:00', 30, '2024-09-30 15:00:00', 19, 'aef51b3b-c043-4ed9-89d5-14883850e170', 'Ispit za predmet diplomskog rada', 'Ispit za predmet diplomskog rada', 2);


--Obavestenja
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('1', 'Obavestenje', 'Oglasna tabla na nivou univerziteta je pustena u rad', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, subject_id, creator_id, creator_role, college_id) VALUES ('2', 'FTN Diplomski obavestenje', 'Krajnji rok za predaju rada je 15 septembar', 'NOW()', '4', '19', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR', '1');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role, subject_id, college_id) VALUES ('3', 'Rezultati ispita iz predmeta Analiza 1', 'Rezultate mozete pronaci na sajtu predmeta', 'NOW()', '6', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR', '1', '1');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('4', 'Prijava za stipendije', 'Otvorena je prijava za studentske stipendije za školsku 2024/2025. godinu. Prijave su otvorene do 15. oktobra.', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('5', 'Obaveza o prisustvu predavanjima', 'Podsećamo sve studente na obaveznost prisustva predavanjima u prvih mesec dana semestra.', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('6', 'Prijemni ispiti', 'Svi kandidati mogu proveriti rezultate prijemnog ispita na zvaničnom sajtu fakulteta.', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('7', 'Radionica o usmenoj prezentaciji', 'Pozivamo studente na radionicu o veštinama usmenog izlaganja koja će se održati 5. novembra.', 'NOW()', '8', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('8', 'Istraživački projekti', 'Pozivamo studente da se prijave za istraživačke projekte koji će se realizovati tokom leta.', 'NOW()', '7', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('9', 'Nastava na daljinu', 'Nastava na daljinu će se održati od 15. do 20. novembra zbog održavanja konferencije.', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('10', 'Obaveštenje o smernicama', 'Svi studenti su obavezni da pročitaju nove smernice za završne radove koje su dostupne na sajtu fakulteta.', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('11', 'Sastanak sa mentorima', 'Svi studenti su pozvani na sastanak sa svojim mentorima u sredu, 1. decembra.', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('12', 'Online seminar', 'Pozivamo studente da se prijave za online seminar o novim tehnologijama koji će se održati 10. decembra.', 'NOW()', '8', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role, college_id) VALUES ('13', 'Dodela diploma', 'Dodela diploma će se održati 15. decembra u Velikoj sali fakulteta.', 'NOW()', '2', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR', '1');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('14', 'Kurs za strano jezike', 'Počinje novi kurs za učenje stranih jezika. Prijave su otvorene do 20. decembra.', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('15', 'Obaveštenje o školskim taksama', 'Podsećamo studente na rokove za plaćanje školarine koji se približavaju.', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role, subject_id, college_id) VALUES ('16', 'Rezultati ispita iz predmeta Analiza 2', 'Rezultate mozete pronaci na sajtu predmeta', 'NOW()', '4', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR', '2', '1');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('17', 'Prijave za letnju praksu', 'Prijave za letnju praksu otvorene su do 5. januara.', 'NOW()', '7', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('18', 'Izbori za studentski parlament', 'Obaveštavamo studente o predstojećim izborima za studentski parlament koji će se održati 20. januara.', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role) VALUES ('19', 'Prijava za konkurs za rad', 'Otvoren je konkurs za rad u studentskoj službi, prijave su do 15. februara.', 'NOW()', '0', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'PROFESSOR');
INSERT INTO public.NOTICEBOARD_ITEM (id, title, message, updated_at, category, creator_id, creator_role, college_id) VALUES ('20', 'Obaveštenje o novim udžbenicima', 'Novi udžbenici su dostupni u biblioteci, pozivamo studente da ih pozajme.', 'NOW()', '3', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', 'ROLE_PROFESSOR', '2');


INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Dobar dan, zanima me kada pocinje upis na fakultet?', 'Postovani, upis na fakultet pocinje nakon prijemnog ispita, 25. jula.', 'True', '2f7a8412-fc0d-415e-83ae-ba8ff75b3630', '2024-08-10');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Postovanje, interesuje me sta je sve potrebno od dokumentacije za konkurs za studentsku stipendiju', 'Dobar dan, potrebni su vam papiri iz gradske kuce o mesecnim prihodima, kao i potvrda da ste redovan student i ukoliko imate brata/sestru moracete dostaviti istu potvrdu i za njih.', 'True', 'aef51b3b-c043-4ed9-89d5-14883850e170', '2024-08-11');
INSERT INTO public.FAQITEM (question, answer, is_answered, creation_date) VALUES('Gde mogu da uplatim  novac za polaganje ispita, ako sam zakasnio sa prijavom ispita na studentskom servisu?', '', 'False', '2024-08-12');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Kada su prijemni ispiti za master studije?', 'Prijemni ispiti za master studije održavaju se početkom oktobra, a tačan datum će biti objavljen na zvaničnom sajtu fakulteta.', 'True', 'c39d1c3f-5822-4f76-85a9-12c62a4782bd', '2024-08-13');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Koje su sve stipendije dostupne za studente prve godine?', 'Za studente prve godine dostupne su stipendije Ministarstva prosvete, kao i brojne privatne stipendije koje možete naći na sajtu fakulteta.', 'True', 'b67d1f23-a6e7-41c4-9cda-8a7c034efb1e', '2024-08-14');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Kada se održava naredna sednica studentskog parlamenta?', 'Naredna sednica studentskog parlamenta zakazana je za sledeći petak u 14:00 u sali broj 101.', 'True', 'e09a72cb-df45-48f4-917b-376e60c53d7c', '2024-08-15');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Da li postoji mogućnost produženja roka za polaganje ispita?', 'Rok za polaganje ispita može se produžiti samo u izuzetnim slučajevima i to uz odobrenje dekana.', 'True', '3f1b431d-01a1-4d36-a4e8-748c9f9286b2', '2024-08-16');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Kako mogu da se prijavim za praksu u okviru fakulteta?', 'Za prijavu na praksu potrebno je popuniti prijavni formular koji se nalazi na sajtu fakulteta i poslati ga na mail studentske službe.', 'True', 'bfebff3e-0f23-4d7a-b682-7c78b34d6789', '2024-08-17');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Kada su zvanični rokovi za polaganje ispita?', 'Zvanični ispitni rokovi su u januaru, junu i septembru, a tačni datumi se objavljuju na sajtu fakulteta.', 'True', '5c64817e-59c7-4b44-8752-6b228728c6a7', '2024-08-18');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Da li su predavanja obavezna za sve predmete?', 'Obaveznost prisustva predavanjima zavisi od predmeta i profesora. Informacije o obaveznosti možete naći u planu svakog predmeta.', 'True', 'b94d3e56-8d69-4af4-84a9-5c7189b7d3b5', '2024-08-19');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Kada će biti objavljeni rezultati prijemnog ispita?', 'Rezultati prijemnog ispita biće objavljeni najkasnije 48 sati nakon završetka ispita na oglasnoj tabli i sajtu fakulteta.', 'True', 'caa6bff3-522e-4bdf-8cdb-503e48fd2762', '2024-08-20');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Koje su opcije za smeštaj u studentskom domu?', 'Studentski domovi nude smeštaj za studente u višekrevetnim sobama, a informacije o konkursima i uslovima možete pronaći na sajtu Studentskog centra.', 'True', '8f3b79da-6582-4ccf-9fa1-08b379c9fcef', '2024-08-21');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Kako mogu da dobijem potvrdu o statusu studenta?', 'Potvrdu o statusu studenta možete dobiti u studentskoj službi ili putem online zahteva na sajtu fakulteta.', 'True', '7c3f124f-89c5-4e49-a1f5-6f5f70cfbf9a', '2024-08-22');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Koliko ESPB bodova je potrebno za upis u narednu godinu?', 'Za upis u narednu godinu potrebno je sakupiti najmanje 48 ESPB bodova.', 'True', 'bdba5c31-0c51-4971-a22e-d44e8e3c993e', '2024-08-23');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Koje su opcije za plaćanje školarine?', 'Školarinu možete platiti u celosti ili na rate. Detalji o plaćanju mogu se naći u studentskoj službi.', 'True', 'a32fc1b9-7c93-42ea-bf2b-3d7b6051ad2f', '2024-08-24');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Kako mogu da pristupim online platformi za učenje?', 'Za pristup online platformi koristite vaše korisničko ime i lozinku koje ste dobili pri upisu. Platformi možete pristupiti preko sajta fakulteta.', 'True', '36f1561f-785d-4b11-8738-c2b7d5f9aade', '2024-08-25');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Da li se nastava održava uživo ili online?', 'Nastava se održava uživo, uz mogućnost praćenja online za studente koji su na distanci ili imaju medicinske razloge.', 'True', '8c5a374b-8c12-47c6-aab4-4c5a7b5fdc9b', '2024-08-26');
INSERT INTO public.FAQITEM (question, answer, is_answered, creator_id, creation_date) VALUES('Kada će biti održana dodela diploma?', 'Dodela diploma za završene studente biće održana u prvoj nedelji decembra, a tačan datum će biti objavljen na sajtu fakulteta.', 'True', 'd3b3e7f7-36c5-478f-8419-55556ef38d0e', '2024-08-27');


-- autoincrements
SELECT setval('noticeboard_item_id_seq', (SELECT MAX(id) FROM public.NOTICEBOARD_ITEM));
SELECT setval('grade_id_seq', (SELECT MAX(id) FROM public.GRADE));
