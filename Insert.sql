INSERT Patient VALUES
(0, 0, 0, 0, 18, 'Lily', 'F', 'Denmark', 'Dengue fever', 'Anti-inflammatory', 'Y'),
(0, 2, 1, 2, 55, 'Leslie', 'M', 'Denmark', 'Stroke', NULL, 'Y');

INSERT Department VALUES
(0, 'General Medicine'),
(1, 'Family Medicine'),
(2, 'Cardiology'),
(3, 'Neurology'),
(4, 'Psychiatry'),
(5, 'General Surgery');

INSERT Room VALUES
(0, 6, 0),
(1, 6, 1),
(2, 6, 2),
(3, 6, 3),
(4, 6, 4),
(5, 6, 5),
(6, 6, 0),
(7, 6, 1),
(8, 6, 2),
(9, 6, 3),
(10, 6, 4),
(11, 6, 5),
(12, 6, 0),
(13, 6, 1),
(14, 6, 2),
(15, 6, 3),
(16, 6, 4),
(17, 6, 5);

INSERT Disease VALUES
('Dengue fever', 'A mosquito-borne tropical disease caused by the dengue virus'),
('athlete\'s foot', 'A common skin infection of the feet caused by fungus'),
('polio', 'An infectious disease caused by the poliovirus'),
('stroke', 'A medical condition in which poor blood flow to the brain results in cell death'),
('hypertension', 'A long-term medical condition in which the blood pressure in the arteries is persistently elevated'),
('appendicitis', 'An inflammation'),
('cervical cancer', 'A cancer arising from the cervix'),
('bronchitis', 'An inflammation of the bronchi (large and medium-sized airways) in the lungs'),
('pneumonia', 'An inflammatory condition of the lung affecting primarily the small air sacs'),
('schizophrenia', 'A mental disorder characterized by abnormal behavior, strange speech, and a decreased ability to understand reality');

INSERT Medicine VALUES
(100, 'Aspirin', 'A medication used to treat pain, fever, or inflammation'),
(200, 'Antibiotics', 'A type of antimicrobial substance active against bacteria'),
(250, 'ibuprofen', 'A medication in the nonsteroidal anti-inflammatory drug (NSAID) class that is used for treating pain, fever, and inflammation'),
(140, 'Penicillin', 'A group of antibiotics which include penicillin G, penicillin V, procaine penicillin, and benzathine penicillin'),
(200, 'Sedative', 'A substance that induces sedation by reducing irritability or excitement'),
(400, 'Laxative', 'Substances that loosen stools and increase bowel movements'),
(290, 'cough syrup', 'Medications used by people with the common cold, cough, or related conditions'),
(70, 'Anti-inflammatory', 'A treatment that reduces inflammation or swelling');

INSERT Nurse VALUES
(0, 'Alice', 'F', 9000, 28, 4),
(1, 'Adam', 'M', 9500, 31, 6),
(2, 'Christina', 'F', 9500, 33, 7),
(3, 'Cheery', 'F', 9000, 27, 4),
(4, 'Dumbo', 'M', 12000, 40, 14),
(5, 'Elsa', 'F', 12000, 39, 14),
(6, 'Frank', 'M', 10000, 36, 10),
(7, 'Jenny', 'F', 12000, 39, 12),
(8, 'Mary', 'F', 9000, 29, 4),
(9, 'Netto', 'M', 9500, 30, 7),
(10, 'Olaf', 'M', 10000, 32, 8),
(11, 'Peter', 'M', 12000, 41, 13),
(12, 'Queen', 'F', 9000, 28, 4),
(13, 'Ruby', 'F', 10000, 38, 9),
(14, 'Sherry', 'F', 9500, 29, 5),
(15, 'Tina', 'F', 9000, 25, 1);

INSERT Doctor VALUES
(0, 'Alibaba', 'M', 0, 25000, 27, 4),
(1, 'Betty', 'F', 1, 35000, 35, 10),
(2, 'Candy', 'F', 2, 27500, 33, 5),
(3, 'Charlie', 'M', 3, 35000, 39, 12),
(4, 'Doctor', 'M', 4, 20000, 39, 1),
(5, 'Eason', 'M', 5, 25000, 28, 3),
(6, 'Gary', 'M', 0, 30000, 36, 8),
(7, 'Jane', 'F', 1, 30000, 39, 9),
(8, 'Nifer', 'F', 2, 50000, 57, 24),
(9, 'Oxford', 'M', 3, 37500, 44, 14),
(10, 'Ouyang LiangWei', 'M', 4, 25000, 29, 2),
(11, 'Ruby', 'F', 5, 25000, 31, 4);