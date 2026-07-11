CREATE EXTENSION IF NOT EXISTS pgcrypto;

INSERT INTO role
(id, name, description, active, created_at, updated_at, version)
VALUES
    (gen_random_uuid(), 'ROLE_USER', 'Default User', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0),
    (gen_random_uuid(), 'ROLE_ADMIN', 'System Administrator', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0),
    (gen_random_uuid(), 'ROLE_LAWYER', 'Legal Professional', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0),
    (gen_random_uuid(), 'ROLE_SUPER_ADMIN', 'Super Administrator', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0);