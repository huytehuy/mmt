CREATE DATABASE mmt;
USE mmt;

CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    username VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    IP VARCHAR(15) DEFAULT '0.0.0.0',
    status INT DEFAULT 1,
    image TEXT
);

CREATE TABLE friend (
    user_id INT,
    friend_user_id INT,
    PRIMARY KEY(user_id, friend_user_id),
    FOREIGN KEY(user_id) REFERENCES user(id) ON DELETE CASCADE,
    FOREIGN KEY(friend_user_id) REFERENCES user(id) ON DELETE CASCADE
);
