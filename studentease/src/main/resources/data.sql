INSERT INTO public.ROLE (name) VALUES ('ROLE_STUDENT');
INSERT INTO public.ROLE (name) VALUES ('ROLE_PROFESSOR');
INSERT INTO public.ROLE (name) VALUES ('ROLE_ADMIN');

INSERT INTO public.ADMIN (id, email, password, is_enabled, is_locked, credentials_updated_at) VALUES ('b28c43a1-9faf-41ab-aab0-aae654a30833', 'admin@studentease.com', '$2a$10$P/aKCRFdwl.7MIxbohlZJOR74RCBmQY2YVkV43zjjnitKHKSIYJv.', 'true', 'false', 'NOW()');