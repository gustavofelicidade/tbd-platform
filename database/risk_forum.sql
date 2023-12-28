CREATE TABLE "User" (
  "Id" increment PRIMARY KEY,
  "Password" varchar NOT NULL,
  "SubscriptionType" varchar NOT NULL,
  "Bio" varchar,
  "Email" varchar UNIQUE NOT NULL,
  "FirstName" varchar NOT NULL,
  "LastName" varchar NOT NULL,
  "ProfilePicture" bytea,
  "Username" varchar UNIQUE NOT NULL,
  "UserType" varchar NOT NULL
);

CREATE TABLE "Team" (
  "Id" increment PRIMARY KEY,
  "Users" integer[]
);

CREATE TABLE "Risk" (
  "Id" increment PRIMARY KEY,
  "Creator" integer,
  "Comments" integer,
  "Causes" varchar[],
  "Date" timestamp,
  "Description" varchar,
  "Effects" varchar[],
  "Industry" varchar,
  "Mitigations" varchar[],
  "Regions" varchar[],
  "RiskType" varchar,
  "Score" float,
  "Title" varchar,
  "Votes" integer
);

CREATE TABLE "RiskProfile" (
  "Id" increment PRIMARY KEY,
  "Creator" integer,
  "Risks" integer,
  "Concepts" integer,
  "Impacts" integer,
  "Score" integer,
  "Detail" varchar
);

CREATE TABLE "Comment" (
  "Id" increment PRIMARY KEY,
  "Dislikes" integer,
  "Likes" integer,
  "Text" varchar NOT NULL
);

CREATE TABLE "Like" (
  "Id" increment PRIMARY KEY,
  "Date" timestamp
);

CREATE TABLE "Dislike" (
  "Id" increment PRIMARY KEY,
  "Date" timestamp
);

CREATE TABLE "Thread" (
  "Id" increment PRIMARY KEY,
  "Risks" varchar[]
);

CREATE TABLE "Opportunities" (
  "Id" increment PRIMARY KEY,
  "Risks" varchar[]
);

CREATE TABLE "VerifiedUsers" (
  "Id" increment PRIMARY KEY,
  "Users" integer[]
);

CREATE TABLE "ProfessionalUsers" (
  "Id" increment PRIMARY KEY,
  "Users" integer[]
);

CREATE TABLE "Ban" (
  "Id" increment PRIMARY KEY,
  "User" integer,
  "Date" timestamp,
  "EndDuration" date
);

CREATE TABLE "Subcription" (
  "Id" increment,
  "Price" float,
  "Title" varchar
);

CREATE TABLE "Buy" (
  "Id" increment PRIMARY KEY,
  "SubcriptionType" integer,
  "User" integer,
  "date" timestamp,
  "EndDuration" date
);

CREATE TABLE "PasswordHistory" (
  "Id" increment PRIMARY KEY,
  "Password" varchar,
  "User" integer
);

CREATE TABLE "RiskProfileConcepts" (
  "Id" increment PRIMARY KEY,
  "Terminate" varchar,
  "Tolerate" varchar,
  "Transfer" varchar,
  "Treat" varchar
);

CREATE TABLE "Impact" (
  "Id" increment PRIMARY KEY,
  "Description" varchar,
  "Title" varchar
);

CREATE TABLE "Topic" (
  "Id" increment PRIMARY KEY,
  "Risks" integer[],
  "Title" varchar UNIQUE
);

CREATE TABLE "ThreadConcepts" (
  "Id" increment PRIMARY KEY,
  "Countries" varchar[]
);

CREATE TABLE "OpportunitiesConcepts" (
  "Id" increment PRIMARY KEY,
  "Countries" varchar[]
);

CREATE TABLE "Vote" (
  "Id" increment PRIMARY KEY,
  "User" integer,
  "Risk" integer,
  "Value" bool
);

ALTER TABLE "Risk" ADD FOREIGN KEY ("Creator") REFERENCES "User" ("Id");

ALTER TABLE "RiskProfile" ADD FOREIGN KEY ("Creator") REFERENCES "User" ("Id");

ALTER TABLE "Risk" ADD FOREIGN KEY ("Id") REFERENCES "RiskProfile" ("Risks");

ALTER TABLE "Comment" ADD FOREIGN KEY ("Id") REFERENCES "Risk" ("Comments");

ALTER TABLE "Like" ADD FOREIGN KEY ("Id") REFERENCES "Comment" ("Likes");

ALTER TABLE "Dislike" ADD FOREIGN KEY ("Id") REFERENCES "Comment" ("Dislikes");

ALTER TABLE "User" ADD FOREIGN KEY ("Id") REFERENCES "Team" ("Users");

ALTER TABLE "Risk" ADD FOREIGN KEY ("Id") REFERENCES "Thread" ("Risks");

ALTER TABLE "Risk" ADD FOREIGN KEY ("Id") REFERENCES "Opportunities" ("Risks");

ALTER TABLE "User" ADD FOREIGN KEY ("Id") REFERENCES "VerifiedUsers" ("Users");

ALTER TABLE "User" ADD FOREIGN KEY ("Id") REFERENCES "ProfessionalUsers" ("Users");

ALTER TABLE "User" ADD FOREIGN KEY ("Id") REFERENCES "Ban" ("User");

ALTER TABLE "User" ADD FOREIGN KEY ("SubscriptionType") REFERENCES "Subcription" ("Id");

ALTER TABLE "Buy" ADD FOREIGN KEY ("SubcriptionType") REFERENCES "Subcription" ("Id");

ALTER TABLE "User" ADD FOREIGN KEY ("Id") REFERENCES "Buy" ("User");

ALTER TABLE "User" ADD FOREIGN KEY ("Id") REFERENCES "PasswordHistory" ("User");

ALTER TABLE "User" ADD FOREIGN KEY ("Password") REFERENCES "PasswordHistory" ("Password");

ALTER TABLE "RiskProfile" ADD FOREIGN KEY ("Concepts") REFERENCES "RiskProfileConcepts" ("Id");

ALTER TABLE "Impact" ADD FOREIGN KEY ("Id") REFERENCES "RiskProfile" ("Impacts");

ALTER TABLE "Risk" ADD FOREIGN KEY ("Id") REFERENCES "Topic" ("Risks");

ALTER TABLE "Vote" ADD FOREIGN KEY ("Id") REFERENCES "Risk" ("Votes");

ALTER TABLE "User" ADD FOREIGN KEY ("Id") REFERENCES "Vote" ("User");
