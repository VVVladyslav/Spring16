CREATE TABLE users (
             user_id bigint GENERATED BY DEFAULT AS IDENTITY primary key,
             username varchar(45) NOT NULL,
             password varchar(64) NOT NULL,
             role varchar(45) NOT NULL,
             enabled bool DEFAULT NULL,
             PRIMARY KEY (user_id)
);

INSERT INTO users (username,password,role,enabled)
VALUES ('user',
        '$2a$10$v0.KLTGTwCQCSrx.T0fkaeAyZnBbd/u646bIDmiRqfy8dDaabHHaC',
        'ROLE_USER', 1);

INSERT INTO users (username,password,role,enabled)
VALUES ('admin',
        '$2a$10$v0.KLTGTwCQCSrx.T0fkaex2Z19QRD9.I7IecClnHVb3R.KW1FftG',
        'ROLE_ADMIN', 1);