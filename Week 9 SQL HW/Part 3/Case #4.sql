Drop table if exists disney;
CREATE TABLE disney (
  id INT,
  animal_name VARCHAR (40) NOT NULL,
  species VARCHAR (40) NOT NULL,
  primary key (id)
);
select * from disney;
INSERT INTO disney (id, animal_name, species) VALUES (1, 'Mickey Mouse','Duck');
INSERT INTO disney (id, animal_name, species) VALUES (2, 'Minie Mouse','Duck');
INSERT INTO disney (id, animal_name, species) VALUES (3, 'Donald Duck','Mouse');
select * from disney;
UPDATE disney
SET species = 'Mouse'
WHERE id = 1;
UPDATE disney
SET species = 'Mouse'
WHERE id = 2;
UPDATE disney
SET species = 'Duck'
WHERE id = 3;
select * from disney;