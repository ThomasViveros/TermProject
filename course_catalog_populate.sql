INSERT INTO departments (name, abbreviation)
VALUES
('Computer Science and Engineering','CECS'),

INSERT INTO degrees (major, type,departments_name)
VALUES
('Computer Science','BS','Computer Science and Engineering')
('Computer Science','MS','Computer Science and Engineering'),
('Computer Engineer','BS','Computer Science and Engineering'),
('Computer Science Applications', 'Minor', 'Computer Science and Engineering'),
('Computer Science', 'Minor', 'Computer Science and Engineering'),
('Cyber Security Applications', 'Minor', 'Computer Science and Engineering'),
('Web Technologies and Applications', 'Minor', 'Computer Science and Engineering'),
('Web Technologies and Applications Certificate','Certificate','Computer Science and Engineering'),


INSERT INTO courses (id, departments_name, name)
VALUES
(80, 'Computer Science and Engineering', 'Foundations for Data Computing'),
(100, 'Computer Science and Engineering', 'Critical Thinking in the Digital Information Age'),
(105, 'Computer Science and Engineering', 'Introduction to Computer Engineering and Computer Science'),
(1050, 'Computer Science and Engineering', 'Introduction to Computer Engineering and Computer Science Honor'),
(110, 'Computer Science and Engineering', 'Beginning Web Design'),
(174, 'Computer Science and Engineering', 'Introduction to Programming and Problem Solving'),
(180, 'Computer Science and Engineering', 'Data Computing for Everyone'),
(200, 'Computer Science and Engineering', 'Intermediate Web Design'),
(201, 'Computer Science and Engineering', 'Computer Logic Design I'),
(202, 'Computer Science and Engineering', 'The Digital Information Age'),
(211, 'Computer Science and Engineering', 'Principles of Computer Engineering I'),
(225, 'Computer Science and Engineering', 'Digital Logic and Assembly Programming'),
(228, 'Computer Science and Engineering', 'Discrete Structures with Computing Applications'),
(2280, 'Computer Science and Engineering', 'Discrete Structures with Computing Applications Honor'),
(229, 'Computer Science and Engineering', 'Discrete Structures with Computing Applications II'),
(2290, 'Computer Science and Engineering', 'Discrete Structures with Computing Applications II Honor'),
(262, 'Computer Science and Engineering', 'Introduction to Embedded System Programming'),
(271, 'Computer Science and Engineering', 'Introduction to Numerical Methods'),
(274, 'Computer Science and Engineering', 'Data Structures'),
(275, 'Computer Science and Engineering', 'Programming and Data Structures in C++'),
(277, 'Computer Science and Engineering', 'Object Oriented Application Development'),
(278, 'Computer Science and Engineering', 'Cyber Security Principles'),
(300, 'Computer Science and Engineering', 'Design of Dynamic Web Sites'),
(301, 'Computer Science and Engineering', 'Computer Logic Design II'),
(3010, 'Computer Science and Engineering', 'Computer Logic Design II Honor'),
(302, 'Computer Science and Engineering', 'Introduction to Computer Forensics'),
(303, 'Computer Science and Engineering', 'Networks and Network Security'),
(311, 'Computer Science and Engineering', 'Principles of Computer Engineering II'),
(323, 'Computer Science and Engineering', 'Database Fundamentals'),
(325, 'Computer Science and Engineering', 'System Programming'),
(326, 'Computer Science and Engineering', 'Operating Systems'),
(327, 'Computer Science and Engineering', 'Introduction to Networks and Distributed Computing'),
(3270, 'Computer Science and Engineering', 'Introduction to Networks and Distributed Computing Honor'),
(328, 'Computer Science and Engineering', 'Algorithms'),
(3280, 'Computer Science and Engineering', 'Algorithms Honor'),
(329, 'Computer Science and Engineering', 'Concepts of Computer Science Theory'),
(341, 'Computer Science and Engineering', 'Computer Architecture and Organization'),
(342, 'Computer Science and Engineering', 'Principles of Programming Languages'),
(343, 'Computer Science and Engineering', 'Introduction to Software Engineering'),
(346, 'Computer Science and Engineering', 'Embedded Systems I'),
(3460, 'Computer Science and Engineering', 'Embedded Systems I Honor'),
(347, 'Computer Science and Engineering', 'Embedded Systems II'),
(361, 'Computer Science and Engineering', 'Digital Design Techniques and Verification'),
(378, 'Computer Science and Engineering', 'Introduction to Computer Security Principles'),
(381, 'Computer Science and Engineering', 'Stochastic Computing'),
(401, 'Computer Science and Engineering', 'Fundamentals of Computer Programming for Educators'),
(402, 'Computer Science and Engineering', 'Computer Science Fundamentals'),
(403, 'Computer Science and Engineering', 'Digital Devices and Computing Systems'),
(406, 'Computer Science and Engineering', 'Selected Topics in Computer Science'),
(410, 'Computer Science and Engineering', 'Computers and Networks'),
(419, 'Computer Science and Engineering', 'Theory of Computation'),
(427, 'Computer Science and Engineering', 'Dynamic Networks'),
(428, 'Computer Science and Engineering', 'Analysis of Algorithms'),
(429, 'Computer Science and Engineering', 'Search Engine Technology'),
(440, 'Computer Science and Engineering', 'Computer Architecture'),
(4400, 'Computer Science and Engineering', 'Computer Architecture Honor'),
(443, 'Computer Science and Engineering', 'Software Project Management and Testing'),
(444, 'Computer Science and Engineering', 'Compiler Construction'),
(447, 'Computer Science and Engineering', 'Embedded Systems III'),
(448, 'Computer Science and Engineering', 'User Interface Design'),
(449, 'Computer Science and Engineering', 'Computer Graphics'),
(450, 'Computer Science and Engineering', 'Data Visualization'),
(451, 'Computer Science and Engineering', 'Artificial Intelligence'),
(453, 'Computer Science and Engineering', 'Mobile Application Development'),
(455, 'Computer Science and Engineering', 'Introduction to Game Programming'),
(456, 'Computer Science and Engineering', 'Machine Learning'),
(457, 'Computer Science and Engineering', 'Applied Machine Learning'),
(460, 'Computer Science and Engineering', 'System on Chip Design'),
(4600, 'Computer Science and Engineering', 'System on Chip Design Honor'),
(461, 'Computer Science and Engineering', 'Hardware/Software Co-design'),
(463, 'Computer Science and Engineering', 'Digital Signal Processing Design and Simulation'),
(470, 'Computer Science and Engineering', 'Web Programming and Accessibility'),
(474, 'Computer Science and Engineering', 'Computer Network Interoperability'),
(475, 'Computer Science and Engineering', 'Software Development with Frameworks'),
(478, 'Computer Science and Engineering', 'Introduction to Computer Security'),
(480, 'Computer Science and Engineering', 'Quantum Computation'),
(4901, 'Computer Science and Engineering', 'Computer Engineering Senior Project I'),
(4902, 'Computer Science and Engineering', 'Computer Engineering Senior Project II'),
(4911, 'Computer Science and Engineering', 'Computer Science Senior Project I'),
(4912, 'Computer Science and Engineering', 'Computer Science Senior Project II'),
(495, 'Computer Science and Engineering', 'Computational Physiology'),
(496, 'Computer Science and Engineering', 'Computer Science Problem Solving'),
(497, 'Computer Science and Engineering', 'Directed Studies');

INSERT INTO course_requirements(departments_name, degrees_major, degrees_type, description,name, total_unit)
VALUES
('Computer Science and Engineering','Computer Science','BS','This degree is designed to prepare graduates for a variety of professional careers in the computer field.','degree',120),
('Computer Science and Engineering','Computer Science','MS','The mission of the graduate program in Computer Science at CSULB is to provide a high-quality educational experience and the technical specialization required to become successful leaders in industry.','degree',60),
('Computer Science and Engineering','Computer Science','MS','','Comprehensive Exam',60),
('Computer Science and Engineering','Computer Science','MS','','Thesis Statement',60),
('Computer Science and Engineering','Computer Science','Minor','','degree',21),
('Computer Science and Engineering','Computer Engineer','BS','This degree is designed to prepare graduates for a variety of professional careers in the computer field.','degree',120),
('Computer Science and Engineering','Computer Science','BS','','Lower Division',60),
('Computer Science and Engineering','Computer Science','BS','','Upper Division',60),
('Computer Science and Engineering','Computer Engineer','BS','','Lower Division',60),
('Computer Science and Engineering','Computer Engineer','BS','','Upper Division',60)

INSERT INTO inclusives(name, departments_name,degrees_major,degrees_type,course_requirements_name)
VALUES
('Core Courses','Computer Science and Engineering','Computer Science','BS','Lower Division'),
('Core Courses','Computer Science and Engineering','Computer Science','BS','Upper Division'),
('Core Courses','Computer Science and Engineering','Computer Engineer','BS','Lower Division'),
('Core Courses','Computer Science and Engineering','Computer Engineer','BS','Upper Division'),
('Core Courses','Computer Science and Engineering','Computer Science','MS','Thesis Statement'),
('Core Courses','Computer Science and Engineering','Computer Science','MS','Comprehensive Exam'),
('Core Courses','Computer Science and Engineering','Computer Science','Minor','degree');

INSERT INTO focus_areas(id,title,departments_name,degrees_major,degrees_type,course_requirements_name)
VALUES
(1,'Software Development','Computer Science and Engineering','Computer Science','BS','Upper Division'),
(2,'Cyber Security','Computer Science and Engineering','Computer Science','BS','Upper Division'),
(3,'Machine Learning and Artificial Intelligence','Computer Science and Engineering','Computer Science','BS','Upper Division')

INSERT INTO totals(name,required_unit, departments_name,degrees_major,degrees_type,course_requirements_name)
VALUES
('Approved Science Electives with Biology Science',8,'Computer Science and Engineering','Computer Science','BS','Lower Division'),
('Computer Science Electives',6,'Computer Science and Engineering','Computer Science','BS','Upper Division'),
('Computer Engineer Electives',9,'Computer Science and Engineering','Computer Engineer','BS','Upper Division'),
('Graduate Elective',6,'Computer Science and Engineering','Computer Science','MS','Thesis Statement'),
('Graduate Elective',9,'Computer Science and Engineering','Computer Science','MS','Comprehensive Exam'),
('Core Courses',9,'Computer Science and Engineering','Computer Science','Minor','degree');



INSERT INTO exclusives(name, departments_name,degrees_major,degrees_type,course_requirements_name)
VALUES
('Approved Science Electives Physics & Chemistry','Computer Science and Engineering','Computer Science','BS','Lower Division'),
('Scientific Writing','Computer Science and Engineering','Computer Science','BS','Upper Division'),
('Statistic','Computer Science and Engineering','Computer Science','BS','Upper Division'),
('Physics','Computer Science and Engineering','Computer Engineer','BS','Lower Division'),
('Statistics','Computer Science and Engineering','Computer Engineer','BS','Upper Division')

INSERT INTO fulfillments(courses_id,departments_name,degrees_major,degrees_type,course_requirements_name)
VALUES
(105,'Computer Science and Engineering','Computer Science','BS','Lower Division'),
(105,'Computer Science and Engineering','Computer Engineer','BS','Lower Division'),
(174,'Computer Science and Engineering','Computer Science','BS','Lower Division'),
(174,'Computer Science and Engineering','Computer Engineer','BS','Lower Division'),
(228,'Computer Science and Engineering','Computer Science','BS','Lower Division'),
(228,'Computer Science and Engineering','Computer Engineer','BS','Lower Division'),
(229,'Computer Science and Engineering','Computer Science','BS','Lower Division'),
(229,'Computer Science and Engineering','Computer Engineer','BS','Lower Division'),
(326,'Computer Science and Engineering','Computer Science','BS','Upper Division'),
(326,'Computer Science and Engineering','Computer Engineer','BS','Upper Division'),
(381,'Computer Science and Engineering','Computer Science','BS','Upper Division'),
(381,'Computer Science and Engineering','Computer Engineer','BS','Upper Division'),
(328,'Computer Science and Engineering','Computer Science','BS','Upper Division'),
(328,'Computer Science and Engineering','Computer Engineer','BS','Upper Division'),
(343,'Computer Science and Engineering','Computer Science','BS','Upper Division'),
(343,'Computer Science and Engineering','Computer Engineer','BS','Upper Division'),
(378,'Computer Science and Engineering','Computer Science','BS','Upper Division'),
(378,'Computer Science and Engineering','Computer Engineer','BS','Upper Division'),
(451,'Computer Science and Engineering','Computer Science','BS','Upper Division'),
(451,'Computer Science and Engineering','Computer Engineer','BS','Upper Division'),
(456,'Computer Science and Engineering','Computer Science','BS','Upper Division'),
(456,'Computer Science and Engineering','Computer Engineer','BS','Upper Division'),
(497,'Computer Science and Engineering','Computer Science','BS','Upper Division'),
(497,'Computer Science and Engineering','Computer Engineer','BS','Upper Division');

