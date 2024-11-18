CREATE DATABASE fitness_platform;

show databases;

USE fitness_platform;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    role ENUM('user', 'trainer') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE fitness_programs (
    program_id INT PRIMARY KEY AUTO_INCREMENT,
    program_name VARCHAR(100) NOT NULL,
    description TEXT,
    duration_weeks INT,
    difficulty ENUM('beginner', 'intermediate', 'advanced'),
    created_by INT,
    FOREIGN KEY (created_by) REFERENCES users(user_id)
);
show tables;