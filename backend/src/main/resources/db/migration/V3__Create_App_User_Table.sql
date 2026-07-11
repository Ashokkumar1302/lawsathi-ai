CREATE TABLE app_user
(
    id UUID PRIMARY KEY,

    first_name VARCHAR(100) NOT NULL,

    last_name VARCHAR(100),

    email VARCHAR(255) NOT NULL UNIQUE,

    password VARCHAR(255) NOT NULL,

    phone_number VARCHAR(20),

    email_verified BOOLEAN NOT NULL DEFAULT FALSE,

    status VARCHAR(30) NOT NULL,

    role_id UUID NOT NULL,

    created_at TIMESTAMP NOT NULL,

    updated_at TIMESTAMP NOT NULL,

    version BIGINT NOT NULL DEFAULT 0,

    CONSTRAINT fk_app_user_role
        FOREIGN KEY (role_id)
            REFERENCES role(id)
            ON DELETE RESTRICT
);