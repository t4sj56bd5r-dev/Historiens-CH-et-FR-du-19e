{\rtf1\ansi\ansicpg1252\cocoartf2908
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Appellation definition\
\
CREATE TABLE Appellation (\
	pk_appellation INTEGER NOT NULL, name TEXT, name_type TEXT, "language" TEXT, sources TEXT,\
	CONSTRAINT Appellation_PK PRIMARY KEY (pk_appellation)\
);\
\
\
-- Geographical_Place definition\
\
CREATE TABLE Geographical_Place (\
	pk_geographical_place INTEGER NOT NULL, name TEXT, "type" TEXT, definition TEXT, longitude INTEGER, latitude INTEGER,\
	CONSTRAINT Geographical_Place_PK PRIMARY KEY (pk_geographical_place)\
);\
\
\
-- Membership_Type definition\
\
CREATE TABLE Membership_Type (\
	pk_membership_type INTEGER NOT NULL, name TEXT, definition TEXT,\
	CONSTRAINT Membership_Type_PK PRIMARY KEY (pk_membership_type)\
);\
\
\
-- Persons_Relationship_Type definition\
\
CREATE TABLE Persons_Relationship_Type (\
	pk_persons_relationship_type INTEGER NOT NULL, name TEXT, definition TEXT,\
	CONSTRAINT Persons_Relationship_Type_PK PRIMARY KEY (pk_persons_relationship_type)\
);\
\
\
-- Publication_Type definition\
\
CREATE TABLE Publication_Type (\
	pk_publication_type INTEGER NOT NULL, name TEXT, definition TEXT,\
	CONSTRAINT Publication_Type_PK PRIMARY KEY (pk_publication_type)\
);\
\
\
-- Institution definition\
\
CREATE TABLE Institution (\
	pk_institution INTEGER NOT NULL,\
	name TEXT,\
	"type" TEXT,\
	siege TEXT,\
	date_of_creation INTEGER,\
	definition TEXT,\
	fk_geographical_place INTEGER,\
	CONSTRAINT Insitution_PK PRIMARY KEY (pk_institution),\
	CONSTRAINT Institution_Geographical_Place_FK FOREIGN KEY (fk_geographical_place) REFERENCES Geographical_Place(pk_geographical_place)\
);\
\
\
-- Occupation definition\
\
CREATE TABLE Occupation (\
	pk_occupation INTEGER NOT NULL,\
	name TEXT,\
	definition TEXT,\
	notes TEXT,\
	fk_occupation INTEGER,\
	fk_institution INTEGER,\
	CONSTRAINT Occupation_PK PRIMARY KEY (pk_occupation),\
	CONSTRAINT Occupation_Occupation_FK FOREIGN KEY (fk_occupation) REFERENCES Occupation(pk_occupation),\
	CONSTRAINT Occupation_Institution_FK FOREIGN KEY (fk_institution) REFERENCES Institution(pk_institution)\
);\
\
\
-- Person definition\
\
CREATE TABLE Person (\
	pk_person INTEGER NOT NULL,\
	name TEXT,\
	birth_year INTEGER,\
	death_year INTEGER,\
	place_birth TEXT,\
	nationality TEXT,\
	fk_appellation INTEGER,\
	fk_geographical_place INTEGER,\
	CONSTRAINT NewTable_PK PRIMARY KEY (pk_person),\
	CONSTRAINT Person_Appellation_FK FOREIGN KEY (fk_appellation) REFERENCES Appellation(pk_appellation),\
	CONSTRAINT Person_Geographical_Place_FK FOREIGN KEY (fk_geographical_place) REFERENCES Geographical_Place(pk_geographical_place)\
);\
\
\
-- Persons_Relationship definition\
\
CREATE TABLE Persons_Relationship (\
	pk_persons_relationship INTEGER NOT NULL,\
	begin_date INTEGER,\
	end_date INTEGER,\
	sources TEXT,\
	fk_person INTEGER,\
	fk_persons_relationship_type INTEGER,\
	CONSTRAINT Persons_Relationship_PK PRIMARY KEY (pk_persons_relationship),\
	CONSTRAINT Persons_Relationship_Person_FK FOREIGN KEY (fk_person) REFERENCES Person(pk_person),\
	CONSTRAINT Persons_Relationship_Persons_Relationship_Type_FK FOREIGN KEY (fk_persons_relationship_type) REFERENCES Persons_Relationship_Type(pk_persons_relationship_type)\
);\
\
\
-- Publication definition\
\
CREATE TABLE Publication (\
	pk_publication INTEGER NOT NULL,\
	title TEXT,\
	date_of_publication INTEGER,\
	edition TEXT,\
	main_theme TEXT,\
	notes TEXT,\
	sources TEXT,\
	fk_person INTEGER,\
	fk_publication_type INTEGER,\
	CONSTRAINT Publication_PK PRIMARY KEY (pk_publication),\
	CONSTRAINT Publication_Person_FK FOREIGN KEY (fk_person) REFERENCES Person(pk_person),\
	CONSTRAINT Publication_Publication_Type_FK FOREIGN KEY (fk_publication_type) REFERENCES Publication_Type(pk_publication_type)\
);\
\
\
-- Pursuit definition\
\
CREATE TABLE Pursuit (\
	pk_pursuit INTEGER NOT NULL,\
	begin_year INTEGER,\
	end_year INTEGER,\
	definition TEXT,\
	notes TEXT,\
	fk_person INTEGER,\
	fk_occupation INTEGER,\
	fk_institution INTEGER,\
	CONSTRAINT Pursuit_PK PRIMARY KEY (pk_pursuit),\
	CONSTRAINT Pursuit_Occupation_FK FOREIGN KEY (fk_occupation) REFERENCES Occupation(pk_occupation),\
	CONSTRAINT Pursuit_Person_FK FOREIGN KEY (fk_person) REFERENCES Person(pk_person),\
	CONSTRAINT Pursuit_Institution_FK FOREIGN KEY (fk_institution) REFERENCES Institution(pk_institution)\
);\
\
\
-- Membership definition\
\
CREATE TABLE Membership (\
	pk_membership INTEGER NOT NULL,\
	begin_date INTEGER,\
	end_date INTEGER,\
	notes TEXT,\
	fk_membership_type INTEGER,\
	fk_institution INTEGER,\
	fk_person INTEGER, sources TEXT,\
	CONSTRAINT Membership_PK PRIMARY KEY (pk_membership),\
	CONSTRAINT Membership_Institution_FK FOREIGN KEY (fk_institution) REFERENCES Institution(pk_institution),\
	CONSTRAINT Membership_Membership_Type_FK FOREIGN KEY (fk_membership_type) REFERENCES Membership_Type(pk_membership_type),\
	CONSTRAINT Membership_Person_FK FOREIGN KEY (fk_person) REFERENCES Person(pk_person)\
);}