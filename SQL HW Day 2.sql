CREATE TABLE "Customer" (
  "customer_id" serial,
  "first_name" VARCHAR(60),
  "last_name" VARCHAR(60),
  PRIMARY KEY ("customer_id")
); 

CREATE TABLE "Movies" (
  "movie_id" serial,
  "movie_name" VARCHAR(100),
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "Tickets" (
  "ticket_id" serial,
  "customer_id" serial,
  "movie_id" integer,
PRIMARY KEY ("ticket_id"),
FOREIGN KEY ("movie_id") REFERENCES "Movies"("movie_id"),
FOREIGN KEY ("customer_id") REFERENCES "Customer"("customer_id")
);

CREATE TABLE "Concessions" (
  "concession_id" serial,
  "product_price" numeric(5,2),
  "food_name" VARCHAR(100),
  "ticket_id" integer,
PRIMARY KEY ("concession_id"),
FOREIGN KEY ("ticket_id") REFERENCES "Tickets"("ticket_id")
);

