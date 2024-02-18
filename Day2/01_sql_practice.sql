USE testdatabase;

CREATE TABLE user (
	id INT AUTO_INCREMENT PRIMARY KEY,
	password VARCHAR(4),
	name VARCHAR(3),
	gender ENUM('male', 'female'),
	email VARCHAR(15),
	birthday CHAR(6),
	age TINYINT,
	company ENUM('samsung', 'lg', 'hyundai')
);

CREATE TABLE board (
	id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(5),
	content VARCHAR(10),
	likes INT CHECK (likes BETWEEN 1 AND 100),
	img CHAR(1) DEFAULT 'c',
    created DATE,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(id)
);
