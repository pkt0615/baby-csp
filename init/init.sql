CREATE TABLE IF NOT EXISTS users (
    id bigint(20) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username TEXT UNIQUE NOT NULL,
    hashed_password BLOB NOT NULL,
    salt BLOB NOT NULL,
    nonce_flag BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS nonces (
    id bigint(20) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username TEXT UNIQUE NOT NULL,
    nonce TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS board (
    id bigint(20) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    uuid VARCHAR(50) NOT NULL,
    title VARCHAR(50) NOT NULL,
    content TEXT NOT NULL,
    username TEXT NOT NULL,
    admin_viewed BOOLEAN NOT NULL
);

INSERT IGNORE INTO users (username, hashed_password, salt, nonce_flag) VALUES ("admin", "Yh91Gjrv00vH/I+4wigN2OPTgO2bBe4RExzSXZrkLDQ=", "hspace", 0);

--CREATE USER 'hspace'@'localhost';

--GRANT INSERT ON babycsp.users TO 'hspace'@'localhost';
