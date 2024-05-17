BEGIN;

--
-- Class AppUser as table app_user
--
CREATE TABLE "app_user" (
    "id" serial PRIMARY KEY,
    "userInfoId" integer NOT NULL,
    "name" text NOT NULL,
    "phone" text NOT NULL,
    "email" text NOT NULL,
    "password" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "user_info_id_unique_idx" ON "app_user" USING btree ("userInfoId");

--
-- Class Field as table field
--
CREATE TABLE "field" (
    "id" serial PRIMARY KEY,
    "templateId" integer NOT NULL,
    "type" text NOT NULL,
    "name" text NOT NULL
);

--
-- Class Permission as table permission
--
CREATE TABLE "permission" (
    "id" serial PRIMARY KEY,
    "fieldId" integer NOT NULL,
    "roleId" integer NOT NULL,
    "display" boolean NOT NULL,
    "edit" boolean NOT NULL
);

--
-- Class Record as table record
--
CREATE TABLE "record" (
    "id" serial PRIMARY KEY,
    "templateId" integer NOT NULL,
    "name" text NOT NULL,
    "date" timestamp without time zone NOT NULL
);

--
-- Class RecordBool as table record_bool
--
CREATE TABLE "record_bool" (
    "id" serial PRIMARY KEY,
    "recordId" integer NOT NULL,
    "fieldId" integer NOT NULL,
    "contentBool" boolean NOT NULL
);

--
-- Class RecordCounter as table record_counter
--
CREATE TABLE "record_counter" (
    "id" serial PRIMARY KEY,
    "recordId" integer NOT NULL,
    "fieldId" integer NOT NULL,
    "counterValue" integer NOT NULL
);

--
-- Class RecordDate as table record_date
--
CREATE TABLE "record_date" (
    "id" serial PRIMARY KEY,
    "recordId" integer NOT NULL,
    "fieldId" integer NOT NULL,
    "contentDate" text NOT NULL
);

--
-- Class RecordImage as table record_image
--
CREATE TABLE "record_image" (
    "id" serial PRIMARY KEY,
    "recordId" integer NOT NULL,
    "fieldId" integer NOT NULL,
    "imageURL" text NOT NULL
);

--
-- Class RecordRole as table record_role
--
CREATE TABLE "record_role" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "recordId" integer NOT NULL,
    "roleId" integer NOT NULL,
    "name" text NOT NULL
);

--
-- Class RecordText as table record_text
--
CREATE TABLE "record_text" (
    "id" serial PRIMARY KEY,
    "recordId" integer NOT NULL,
    "fieldId" integer NOT NULL,
    "contentText" text NOT NULL
);

--
-- Class Role as table role
--
CREATE TABLE "role" (
    "id" serial PRIMARY KEY,
    "templateId" integer NOT NULL,
    "name" text NOT NULL,
    "display" boolean NOT NULL,
    "edit" boolean NOT NULL
);

--
-- Class Template as table template
--
CREATE TABLE "template" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "name" text NOT NULL
);

--
-- Class AuthKey as table serverpod_auth_key
--
CREATE TABLE "serverpod_auth_key" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "hash" text NOT NULL,
    "scopeNames" json NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_auth_key_userId_idx" ON "serverpod_auth_key" USING btree ("userId");

--
-- Class CloudStorageEntry as table serverpod_cloud_storage
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "addedTime" timestamp without time zone NOT NULL,
    "expiration" timestamp without time zone,
    "byteData" bytea NOT NULL,
    "verified" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_path_idx" ON "serverpod_cloud_storage" USING btree ("storageId", "path");
CREATE INDEX "serverpod_cloud_storage_expiration" ON "serverpod_cloud_storage" USING btree ("expiration");

--
-- Class CloudStorageDirectUploadEntry as table serverpod_cloud_storage_direct_upload
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- Class FutureCallEntry as table serverpod_future_call
--
CREATE TABLE "serverpod_future_call" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "serializedObject" text,
    "serverId" text NOT NULL,
    "identifier" text
);

-- Indexes
CREATE INDEX "serverpod_future_call_time_idx" ON "serverpod_future_call" USING btree ("time");
CREATE INDEX "serverpod_future_call_serverId_idx" ON "serverpod_future_call" USING btree ("serverId");
CREATE INDEX "serverpod_future_call_identifier_idx" ON "serverpod_future_call" USING btree ("identifier");

--
-- Class ServerHealthConnectionInfo as table serverpod_health_connection_info
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" integer NOT NULL,
    "closing" integer NOT NULL,
    "idle" integer NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- Class ServerHealthMetric as table serverpod_health_metric
--
CREATE TABLE "serverpod_health_metric" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- Class LogEntry as table serverpod_log
--
CREATE TABLE "serverpod_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" integer NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId");

--
-- Class MessageLogEntry as table serverpod_message_log
--
CREATE TABLE "serverpod_message_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "serverId" text NOT NULL,
    "messageId" integer NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

--
-- Class MethodInfo as table serverpod_method
--
CREATE TABLE "serverpod_method" (
    "id" serial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- Class DatabaseMigrationVersion as table serverpod_migrations
--
CREATE TABLE "serverpod_migrations" (
    "id" serial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- Class QueryLogEntry as table serverpod_query_log
--
CREATE TABLE "serverpod_query_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" integer,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId");

--
-- Class ReadWriteTestEntry as table serverpod_readwrite_test
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" serial PRIMARY KEY,
    "number" integer NOT NULL
);

--
-- Class RuntimeSettings as table serverpod_runtime_settings
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" serial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- Class SessionLogEntry as table serverpod_session_log
--
CREATE TABLE "serverpod_session_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" integer,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" integer,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- Class EmailAuth as table serverpod_email_auth
--
CREATE TABLE "serverpod_email_auth" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_email" ON "serverpod_email_auth" USING btree ("email");

--
-- Class EmailCreateAccountRequest as table serverpod_email_create_request
--
CREATE TABLE "serverpod_email_create_request" (
    "id" serial PRIMARY KEY,
    "userName" text NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL,
    "verificationCode" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_create_account_request_idx" ON "serverpod_email_create_request" USING btree ("email");

--
-- Class EmailFailedSignIn as table serverpod_email_failed_sign_in
--
CREATE TABLE "serverpod_email_failed_sign_in" (
    "id" serial PRIMARY KEY,
    "email" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "ipAddress" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_email_failed_sign_in_email_idx" ON "serverpod_email_failed_sign_in" USING btree ("email");
CREATE INDEX "serverpod_email_failed_sign_in_time_idx" ON "serverpod_email_failed_sign_in" USING btree ("time");

--
-- Class EmailReset as table serverpod_email_reset
--
CREATE TABLE "serverpod_email_reset" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "verificationCode" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_reset_verification_idx" ON "serverpod_email_reset" USING btree ("verificationCode");

--
-- Class GoogleRefreshToken as table serverpod_google_refresh_token
--
CREATE TABLE "serverpod_google_refresh_token" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "refreshToken" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_google_refresh_token_userId_idx" ON "serverpod_google_refresh_token" USING btree ("userId");

--
-- Class UserImage as table serverpod_user_image
--
CREATE TABLE "serverpod_user_image" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "version" integer NOT NULL,
    "url" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_user_image_user_id" ON "serverpod_user_image" USING btree ("userId", "version");

--
-- Class UserInfo as table serverpod_user_info
--
CREATE TABLE "serverpod_user_info" (
    "id" serial PRIMARY KEY,
    "userIdentifier" text NOT NULL,
    "userName" text NOT NULL,
    "fullName" text,
    "email" text,
    "created" timestamp without time zone NOT NULL,
    "imageUrl" text,
    "scopeNames" json NOT NULL,
    "blocked" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_user_info_user_identifier" ON "serverpod_user_info" USING btree ("userIdentifier");
CREATE INDEX "serverpod_user_info_email" ON "serverpod_user_info" USING btree ("email");

--
-- Foreign relations for "app_user" table
--
ALTER TABLE ONLY "app_user"
    ADD CONSTRAINT "app_user_fk_0"
    FOREIGN KEY("userInfoId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "field" table
--
ALTER TABLE ONLY "field"
    ADD CONSTRAINT "field_fk_0"
    FOREIGN KEY("templateId")
    REFERENCES "template"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "permission" table
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
-- Foreign relations for "record" table
--
ALTER TABLE ONLY "record"
    ADD CONSTRAINT "record_fk_0"
    FOREIGN KEY("templateId")
    REFERENCES "template"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "record_bool" table
--
ALTER TABLE ONLY "record_bool"
    ADD CONSTRAINT "record_bool_fk_0"
    FOREIGN KEY("recordId")
    REFERENCES "record"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "record_bool"
    ADD CONSTRAINT "record_bool_fk_1"
    FOREIGN KEY("fieldId")
    REFERENCES "field"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "record_counter" table
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
-- Foreign relations for "record_date" table
--
ALTER TABLE ONLY "record_date"
    ADD CONSTRAINT "record_date_fk_0"
    FOREIGN KEY("recordId")
    REFERENCES "record"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "record_date"
    ADD CONSTRAINT "record_date_fk_1"
    FOREIGN KEY("fieldId")
    REFERENCES "field"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "record_image" table
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
-- Foreign relations for "record_role" table
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
-- Foreign relations for "record_text" table
--
ALTER TABLE ONLY "record_text"
    ADD CONSTRAINT "record_text_fk_0"
    FOREIGN KEY("recordId")
    REFERENCES "record"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "record_text"
    ADD CONSTRAINT "record_text_fk_1"
    FOREIGN KEY("fieldId")
    REFERENCES "field"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "role" table
--
ALTER TABLE ONLY "role"
    ADD CONSTRAINT "role_fk_0"
    FOREIGN KEY("templateId")
    REFERENCES "template"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "template" table
--
ALTER TABLE ONLY "template"
    ADD CONSTRAINT "template_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "app_user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_log" table
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_message_log" table
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_query_log" table
--
ALTER TABLE ONLY "serverpod_query_log"
    ADD CONSTRAINT "serverpod_query_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
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