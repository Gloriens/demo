BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "record_counter" (
    "id" serial PRIMARY KEY,
    "recordId" integer NOT NULL,
    "fieldId" integer NOT NULL,
    "counterValue" integer NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "record_counter"
    ADD CONSTRAINT "record_counter_fk_0"
    FOREIGN KEY("recordId")
    REFERENCES "record"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "record_counter"
    ADD CONSTRAINT "record_counter_fk_1"
    FOREIGN KEY("fieldId")
    REFERENCES "field"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR demo
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('demo', '20240430214459940', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240430214459940', "timestamp" = now();

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
