--
-- Class AppUser as table app_user
--

CREATE TABLE "app_user" (
  "id" serial,
  "name" text NOT NULL,
  "phone" text NOT NULL,
  "email" text NOT NULL,
  "password" text NOT NULL
);

ALTER TABLE ONLY "app_user"
  ADD CONSTRAINT app_user_pkey PRIMARY KEY (id);


--
-- Class Template as table template
--

CREATE TABLE "template" (
  "id" serial,
  "userId" integer NOT NULL,
  "name" text NOT NULL
);

ALTER TABLE ONLY "template"
  ADD CONSTRAINT template_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "template"
  ADD CONSTRAINT template_fk_0
    FOREIGN KEY("userId")
      REFERENCES app_user(id)
        ON DELETE CASCADE;

--
-- Class Role as table role
--

CREATE TABLE "role" (
  "id" serial,
  "templateId" integer NOT NULL,
  "name" text NOT NULL,
  "display" boolean NOT NULL,
  "edit" boolean NOT NULL
);

ALTER TABLE ONLY "role"
  ADD CONSTRAINT role_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "role"
  ADD CONSTRAINT role_fk_0
    FOREIGN KEY("templateId")
      REFERENCES template(id)
        ON DELETE CASCADE;

--
-- Class Field as table field
--

CREATE TABLE "field" (
  "id" serial,
  "templateId" integer NOT NULL,
  "type" text NOT NULL,
  "name" text NOT NULL
);

ALTER TABLE ONLY "field"
  ADD CONSTRAINT field_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "field"
  ADD CONSTRAINT field_fk_0
    FOREIGN KEY("templateId")
      REFERENCES template(id)
        ON DELETE CASCADE;

