BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "permission" (
    "id" serial PRIMARY KEY,
    "fieldId" integer NOT NULL,
    "roleId" integer NOT NULL,
    "display" boolean NOT NULL,
    "edit" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "record_role" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "recordId" integer NOT NULL,
    "roleId" integer NOT NULL,
    "name" text NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "permission"
    ADD CONSTRAINT "permission_fk_0"
    FOREIGN KEY("fieldId")
    REFERENCES "field"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "permission"
    ADD CONSTRAINT "permission_fk_1"
    FOREIGN KEY("roleId")
    REFERENCES "role"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "record_role"
    ADD CONSTRAINT "record_role_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "app_user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "record_role"
    ADD CONSTRAINT "record_role_fk_1"
    FOREIGN KEY("recordId")
    REFERENCES "record"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "record_role"
    ADD CONSTRAINT "record_role_fk_2"
    FOREIGN KEY("roleId")
    REFERENCES "role"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR demo
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('demo', '20240425083312496', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240425083312496', "timestamp" = now();

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
