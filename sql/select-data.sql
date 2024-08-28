SELECT * FROM books;

SELECT
  books."id" AS "bookId",
  books."name",
  books."pages",
  categories."name" AS "category",
  categories."id" AS "categoryId"
  FROM books
  JOIN books_categories ON books."id" = books_categories."bookId"
  JOIN categories ON categories."id" = books_categories."categoryId"
  WHERE categories."id" = 3;

SELECT
  books."id" AS "bookId",
  books."name",
  books."pages",
  categories."name" AS "category"
  FROM books
  JOIN books_categories ON books."id" = books_categories."bookId"
  JOIN categories ON categories."id" = books_categories."categoryId"
  WHERE books_categories."bookId" = books."id";

SELECT 
  books."id" AS "bookId",
  books."name" AS "bookName",
  books."pages",
  authors."id" AS "authorId",
  authors."name" AS "authorName",
  authors."bio"
  FROM books
  JOIN authors ON books."authorId" = authors."id"
  WHERE books."name" ILIKE '%harry potter%';