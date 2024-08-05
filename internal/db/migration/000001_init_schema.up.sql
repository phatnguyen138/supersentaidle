CREATE TABLE "series" (
  "id" bigint PRIMARY KEY NOT NULL,
  "name" varchar NOT NULL,
  "year" int NOT NULL,
  "theme" varchar,
  "color_scheme" varchar
);

CREATE TABLE "character" (
  "id" bigint PRIMARY KEY NOT NULL,
  "series_id" bigint,
  "name" varchar NOT NULL,
  "ranger_color" varchar,
  "role" varchar,
  "civilian_identity" varchar,
  "signature_move" varchar
);

CREATE TABLE "mecha" (
  "id" bigint PRIMARY KEY NOT NULL,
  "series_id" bigint,
  "name" varchar NOT NULL,
  "type" varchar,
  "components" varchar
);

CREATE TABLE "weapon" (
  "id" bigint PRIMARY KEY NOT NULL,
  "series_id" bigint,
  "name" varchar NOT NULL,
  "type" varchar,
  "wielder_id" bigint
);

CREATE TABLE "daily_challenge" (
  "id" bigint PRIMARY KEY NOT NULL,
  "date" date NOT NULL,
  "category" varchar NOT NULL,
  "answer_id" bigint NOT NULL
);

CREATE TABLE "user_progress" (
  "id" bigint PRIMARY KEY NOT NULL,
  "user_id" bigint NOT NULL,
  "challenge_id" bigint,
  "attempts" int NOT NULL,
  "completed" boolean NOT NULL,
  "completion_time" timestamp
);

ALTER TABLE "character" ADD FOREIGN KEY ("series_id") REFERENCES "series" ("id");

ALTER TABLE "mecha" ADD FOREIGN KEY ("series_id") REFERENCES "series" ("id");

ALTER TABLE "weapon" ADD FOREIGN KEY ("series_id") REFERENCES "series" ("id");

ALTER TABLE "weapon" ADD FOREIGN KEY ("wielder_id") REFERENCES "character" ("id");

ALTER TABLE "user_progress" ADD FOREIGN KEY ("challenge_id") REFERENCES "daily_challenge" ("id");