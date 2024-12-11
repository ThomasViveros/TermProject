-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-12-10 23:57:22.236

-- tables
-- Table: course_requirements
CREATE TABLE course_requirements (
    departments_name varchar(80)  NOT NULL,
    degrees_major varchar(80)  NOT NULL,
    degrees_type varchar(80)  NOT NULL,
    description varchar(255)  NOT NULL,
    name varchar(255)  NOT NULL,
    total_unit int  NOT NULL,
    CONSTRAINT course_requirements_pk PRIMARY KEY (departments_name,degrees_major,degrees_type,name)
);

-- Table: courses
CREATE TABLE courses (
    id int  NOT NULL,
    departments_name varchar(80)  NOT NULL,
    name varchar(80)  NOT NULL,
    CONSTRAINT courses_uk_01 UNIQUE (name, departments_name) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT courses_pk PRIMARY KEY (id,departments_name)
);

-- Table: degrees
CREATE TABLE degrees (
    major varchar(80)  NOT NULL,
    type varchar(80)  NOT NULL,
    departments_name varchar(80)  NOT NULL,
    CONSTRAINT degrees_pk PRIMARY KEY (major,type,departments_name)
);

-- Table: departments
CREATE TABLE departments (
    name varchar(80)  NOT NULL,
    abbreviation varchar(10)  NOT NULL,
    CONSTRAINT departments_pk PRIMARY KEY (name)
);

-- Table: exclusives
CREATE TABLE exclusives (
        name varchar(255) NOT NULL,
    departments_name varchar(80)  NOT NULL,
    degrees_major varchar(80)  NOT NULL,
    degrees_type varchar(80)  NOT NULL,
    course_requirements_name varchar(255)  NOT NULL,
    CONSTRAINT exclusives_pk PRIMARY KEY (name,departments_name,degrees_major,degrees_type,course_requirements_name)
);

-- Table: focus_areas
CREATE TABLE focus_areas (
    id int  NOT NULL,
    title varchar(80)  NOT NULL,
    departments_name varchar(80)  NOT NULL,
    degrees_major varchar(80)  NOT NULL,
    degrees_type varchar(80)  NOT NULL,
    course_requirements_name varchar(255)  NOT NULL,
    CONSTRAINT focus_areas_uk_01 UNIQUE (title) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT focus_areas_pk PRIMARY KEY (id,departments_name,degrees_major,degrees_type,course_requirements_name)
);

-- Table: fulfillments
CREATE TABLE fulfillments (
    courses_id int  NOT NULL,
    departments_name varchar(80)  NOT NULL,
    degrees_major varchar(80)  NOT NULL,
    degrees_type varchar(80)  NOT NULL,
    course_requirements_name varchar(255)  NOT NULL,
    CONSTRAINT fulfillments_pk PRIMARY KEY (courses_id,departments_name,course_requirements_name,degrees_type,degrees_major)
);

-- Table: inclusives
CREATE TABLE inclusives (
    name varchar(255) NOT NULL,
    departments_name varchar(80)  NOT NULL,
    degrees_major varchar(80)  NOT NULL,
    degrees_type varchar(80)  NOT NULL,
    course_requirements_name varchar(255)  NOT NULL,
    CONSTRAINT inclusives_pk PRIMARY KEY (name,departments_name,degrees_major,degrees_type,course_requirements_name)
);

-- Table: totals
CREATE TABLE totals (
    name varchar(255) NOT NULL,
    required_unit int  NOT NULL,
    departments_name varchar(80)  NOT NULL,
    degrees_major varchar(80)  NOT NULL,
    degrees_type varchar(80)  NOT NULL,
    course_requirements_name varchar(255)  NOT NULL,
    CONSTRAINT totals_pk PRIMARY KEY (name,departments_name,degrees_major,degrees_type,course_requirements_name)
);

-- foreign keys
-- Reference: course_requirements_course_requirements (table: course_requirements)
ALTER TABLE course_requirements ADD CONSTRAINT course_requirements_course_requirements
    FOREIGN KEY (departments_name, degrees_major, degrees_type, name)
    REFERENCES course_requirements (departments_name, degrees_major, degrees_type, name)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: course_requirements_degrees_uk_01 (table: course_requirements)
ALTER TABLE course_requirements ADD CONSTRAINT course_requirements_degrees_uk_01
    FOREIGN KEY (degrees_major, degrees_type, departments_name)
    REFERENCES degrees (major, type, departments_name)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: courses_departments_uk_01 (table: courses)
ALTER TABLE courses ADD CONSTRAINT courses_departments_uk_01
    FOREIGN KEY (departments_name)
    REFERENCES departments (name)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: degrees_departments_uk_01 (table: degrees)
ALTER TABLE degrees ADD CONSTRAINT degrees_departments_uk_01
    FOREIGN KEY (departments_name)
    REFERENCES departments (name)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: exclusives_course_requirements_uk_01 (table: exclusives)
ALTER TABLE exclusives ADD CONSTRAINT exclusives_course_requirements_uk_01
    FOREIGN KEY (departments_name, degrees_major, degrees_type, course_requirements_name)
    REFERENCES course_requirements (departments_name, degrees_major, degrees_type, name)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: focus_areas_course_requirements (table: focus_areas)
ALTER TABLE focus_areas ADD CONSTRAINT focus_areas_course_requirements
    FOREIGN KEY (departments_name, degrees_major, degrees_type, course_requirements_name)
    REFERENCES course_requirements (departments_name, degrees_major, degrees_type, name)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: fulfillments_course_requirements (table: fulfillments)
ALTER TABLE fulfillments ADD CONSTRAINT fulfillments_course_requirements
    FOREIGN KEY (departments_name, degrees_major, degrees_type, course_requirements_name)
    REFERENCES course_requirements (departments_name, degrees_major, degrees_type, name)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: fulfillments_courses (table: fulfillments)
ALTER TABLE fulfillments ADD CONSTRAINT fulfillments_courses
    FOREIGN KEY (courses_id, departments_name)
    REFERENCES courses (id, departments_name)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: inclusives_course_requirements_uk_01 (table: inclusives)
ALTER TABLE inclusives ADD CONSTRAINT inclusives_course_requirements_uk_01
    FOREIGN KEY (departments_name, degrees_major, degrees_type, course_requirements_name)
    REFERENCES course_requirements (departments_name, degrees_major, degrees_type, name)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: totals_course_requirements_uk_01 (table: totals)
ALTER TABLE totals ADD CONSTRAINT totals_course_requirements_uk_01
    FOREIGN KEY (departments_name, degrees_major, degrees_type, course_requirements_name)
    REFERENCES course_requirements (departments_name, degrees_major, degrees_type, name)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

