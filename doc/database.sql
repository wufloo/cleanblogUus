CREATE TABLE authors
(
  author_id   INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  author_name VARCHAR(255)             NOT NULL
);
CREATE TABLE posts
(
  post_id          INT UNSIGNED PRIMARY KEY           NOT NULL AUTO_INCREMENT,
  author_id        INT UNSIGNED                       NOT NULL,
  post_title       VARCHAR(255)                       NOT NULL,
  post_description VARCHAR(255)                       NOT NULL,
  post_text        LONGTEXT                           NOT NULL,
  post_created     DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
  FOREIGN KEY (author_id) REFERENCES authors (author_id)
);
