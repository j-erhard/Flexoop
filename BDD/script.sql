CREATE DATABASE IF NOT EXISTS flexoop
    CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE flexoop;

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

CREATE TABLE IF NOT EXISTS user (
    id                INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    first_name        VARCHAR(25) NOT NULL,
    last_name         VARCHAR(25) NOT NULL,
    email             VARCHAR(50) UNIQUE NOT NULL,
    password          LONGTEXT NOT NULL,
    type              ENUM('user', 'admin') DEFAULT 'user' NOT NULL
);
