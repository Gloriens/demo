BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "record_image" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "record_image" (
    "id" serial PRIMARY KEY,
    "recordId" integer NOT NULL,
    "fieldId" integer NOT NULL,
    "imageURL" text NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "record_image"
    ADD CONSTRAINT "record_image_fk_0"
    FOREIGN KEY("recordId")
    REFERENCES "record"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "record_image"
    ADD CONSTRAINT "record_image_fk_1"
    FOREIGN KEY("fieldId")
    REFERENCES "field"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR demo
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('demo', '20240426134123107', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240426134123107', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240115074239642', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074239642', "timestamp" = now();


COMMIT;
