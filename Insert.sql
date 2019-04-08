INSERT Patient VALUES
('000', '000', '000', '000', 18, 'Lily', 'F', 'Denmark', 'Dengue fever', 'Anti-inflammatory', 'Y'),
('000', '002', '001', '002', 55, 'Leslie', 'M', 'Denmark', 'Stroke', NULL, 'Y');

INSERT Department VALUES
('000', 'General Medicine'),
('001', 'Family Medicine'),
('002', 'Cardiology'),
('003', 'Neurology'),
('004', 'Psychiatry'),
('005', 'General Surgery');

INSERT Room VALUES
('000', 5, '000'),
('001', 6, '001'),
('002', 5, '002'),
('003', 6, '003'),
('004', 6, '004'),
('005', 6, '005'),
('006', 6, '000'),
('007', 6, '001'),
('008', 6, '002'),
('009', 6, '003'),
('010', 6, '004'),
('011', 6, '005');

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
('000', 'Alice', 'F', 9000, 28, 4),
('001', 'Adam', 'M', 9500, 31, 6),
('002', 'Christina', 'F', 9500, 33, 7),
('003', 'Cheery', 'F', 9000, 27, 4),
('004', 'Dumbo', 'M', 12000, 40, 14),
('005', 'Elsa', 'F', 12000, 39, 14),
('006', 'Frank', 'M', 10000, 36, 10),
('007', 'Jenny', 'F', 12000, 39, 12),
('008', 'Mary', 'F', 9000, 29, 4),
('009', 'Netto', 'M', 9500, 30, 7),
('010', 'Olaf', 'M', 10000, 32, 8),
('011', 'Peter', 'M', 12000, 41, 13),
('012', 'Queen', 'F', 9000, 28, 4),
('013', 'Ruby', 'F', 10000, 38, 9),
('014', 'Sherry', 'F', 9500, 29, 5),
('015', 'Tina', 'F', 9000, 25, 1);

INSERT Doctor VALUES
('000', 'Alibaba', 'M', '000', 25000, 27, 4),
('001', 'Betty', 'F', '001', 35000, 35, 10),
('002', 'Candy', 'F', '002', 27500, 33, 5),
('003', 'Charlie', 'M', '003', 35000, 39, 12),
('004', 'Doctor', 'M', '004', 20000, 39, 1),
('005', 'Eason', 'M', '005', 25000, 28, 3),
('006', 'Gary', 'M', '000', 30000, 36, 8),
('007', 'Jane', 'F', '001', 30000, 39, 9),
('008', 'Nifer', 'F', '002', 50000, 57, 24),
('009', 'Oxford', 'M', '003', 37500, 44, 14),
('010', 'Ouyang LiangWei', 'M', '004', 25000, 29, 2),
('011', 'Ruby', 'F', '005', 25000, 31, 4);