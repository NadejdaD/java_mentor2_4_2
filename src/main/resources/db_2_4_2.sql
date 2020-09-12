USE db_2_4_2;
-- Table users
CREATE TABLE users(
                      id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
                      login VARCHAR(255) NOT NULL ,
                      password VARCHAR(255) NOT NULL
) ENGINE = InnoDB;

-- Table roles
CREATE TABLE roles(
                      id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
                      name VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

-- Table for mapping user and roles: user_roles
CREATE TABLE user_roles(
                           user_id INT NOT NULL ,
                           role_id INT NOT NULL ,

                           FOREIGN KEY (user_id) REFERENCES users(id),
                           FOREIGN KEY (role_id) REFERENCES roles(id),

                           UNIQUE (user_id, role_id)
) ENGINE = InnoDB;

-- Insert data
INSERT INTO users VALUES (1, 'admin', '$2a$10$UoDWC9Y8T80a0m6IFkI3rut9rIn1/AX22fiBy5JCI6uPBNBR8rh5q');
INSERT INTO users VALUES (2, 'user', '$2a$10$WK.YPok1Vy4JAd8z9Qyv8OJCiIq4.PN8jOSsHfH4MpgZG8/2H8Eka');
INSERT INTO users VALUES (3, 'user1', '$2a$10$WK.YPok1Vy4JAd8z9Qyv8OJCiIq4.PN8jOSsHfH4MpgZG8/2H8Eka');

INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_ADMIN');

INSERT INTO user_roles VALUES (1, 2);
INSERT INTO user_roles VALUES (2, 1);
INSERT INTO user_roles VALUES (3, 1);