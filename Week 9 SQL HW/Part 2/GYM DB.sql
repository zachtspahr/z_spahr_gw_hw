-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/QN7Tso
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "gym" (
    "gym_name" STRING   NOT NULL,
    CONSTRAINT "pk_gym" PRIMARY KEY (
        "gym_name"
     )
);

CREATE TABLE "members" (
    "member_id" STRING   NOT NULL,
    "card_number" INT   NOT NULL,
    "gym_name" STRING   NOT NULL,
    "first_name" STRING   NOT NULL,
    "last_name" STRING   NOT NULL,
    CONSTRAINT "pk_members" PRIMARY KEY (
        "member_id"
     )
);

CREATE TABLE "trainers" (
    "trainer_id" INT   NOT NULL,
    "gym_name" STRING   NOT NULL,
    "first_name" STRING   NOT NULL,
    "last_name" STRING   NOT NULL,
    CONSTRAINT "pk_trainers" PRIMARY KEY (
        "trainer_id"
     )
);

CREATE TABLE "payment" (
    "card_number" INT   NOT NULL,
    "gym_name" STRING   NOT NULL,
    "member_id" STRING   NOT NULL,
    "first_name" STRING   NOT NULL,
    "last_name" STRING   NOT NULL,
    "amt_paid" INT   NOT NULL,
    CONSTRAINT "pk_payment" PRIMARY KEY (
        "card_number"
     )
);

ALTER TABLE "members" ADD CONSTRAINT "fk_members_gym_name" FOREIGN KEY("gym_name")
REFERENCES "gym" ("gym_name");

ALTER TABLE "trainers" ADD CONSTRAINT "fk_trainers_gym_name" FOREIGN KEY("gym_name")
REFERENCES "gym" ("gym_name");

ALTER TABLE "payment" ADD CONSTRAINT "fk_payment_member_id" FOREIGN KEY("member_id")
REFERENCES "members" ("member_id");

