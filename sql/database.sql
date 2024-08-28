CREATE TABLE IF NOT EXISTS books (
  "id"        SERIAL        PRIMARY KEY,
  "name"      VARCHAR(200)  NOT NULL,
  "pages"     INTEGER       NOT NULL,
  "createdAt" TIMESTAMP     NOT NULL,
  "updatedAt" TIMESTAMP     NOT NULL,
  "authorId"  INTEGER,

  FOREIGN KEY ("authorId") REFERENCES authors ("id") ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS books_categories (
  "id"          SERIAL    PRIMARY KEY,
  "bookId"      INTEGER   NOT NULL,
  "categoryId"  INTEGER   NOT NULL,

  FOREIGN KEY ("bookId") REFERENCES books ("id") ON DELETE CASCADE,
  FOREIGN KEY ("categoryId") REFERENCES categories ("id") ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS categories (
  "id"        SERIAL          PRIMARY KEY,
  "name"      VARCHAR(100)    NOT NULL,
  "createdAt" TIMESTAMP       NOT NULL,
  "updatedAt" TIMESTAMP       NOT NULL
);

CREATE TABLE IF NOT EXISTS authors (
  "id"    SERIAL        PRIMARY KEY,
  "name"  VARCHAR(200)  NOT NULL,
  "bio"   TEXT          NOT NULL
);

CREATE TABLE IF NOT EXISTS contact_infos (
  "id"        SERIAL        PRIMARY KEY,
  "phone"     VARCHAR(20),
  "email"     VARCHAR(200)  NOT NULL,
  "authorId"  INTEGER       UNIQUE        NOT NULL,

  FOREIGN KEY ("authorId") REFERENCES authors ("id") ON DELETE CASCADE
);

