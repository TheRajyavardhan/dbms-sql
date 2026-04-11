-- =========================================================
-- person-car.sql
-- One-to-One relationship: each car belongs to one person
-- UNIQUE(car_id) enforces this constraint
-- ~1000 persons | ~600 cars | ~60% persons own a car
-- =========================================================

DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS car;

create table car (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    make VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    price NUMERIC(19, 2) NOT NULL
);

create table person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    email VARCHAR(100),
    date_of_birth DATE NOT NULL,
    country_of_birth VARCHAR(50) NOT NULL,
    car_id BIGINT REFERENCES car (id),
    UNIQUE(car_id)
);

-- =========================================================
-- Insert ~1000 Persons (car_id assigned later via UPDATE)
-- =========================================================
insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) values
    ('Stella', 'Young', 'Male', null, '1975-07-18', 'Egypt'),
    ('Dennis', 'Hernandez', 'Female', 'dennis.hernandez346@gmail.com', '1999-08-24', 'Poland'),
    ('Nora', 'Kelly', 'Female', 'nora.kelly109@mail.com', '1973-04-24', 'Sweden'),
    ('Patricia', 'Taylor', 'Female', 'patricia.taylor952@gmail.com', '1964-10-27', 'Pakistan'),
    ('Isabella', 'Omar', 'Male', 'isabella.omar91@hotmail.com', '1983-01-18', 'Pakistan'),
    ('Brandon', 'Thompson', 'Male', null, '1974-08-08', 'Colombia'),
    ('Patrick', 'Hill', 'Male', 'patrick.hill241@gmail.com', '1985-05-06', 'Thailand'),
    ('Steven', 'Ali', 'Other', 'steven.ali708@gmail.com', '1986-10-02', 'Turkey'),
    ('Nicholas', 'King', 'Other', null, '1977-11-07', 'Denmark'),
    ('Isabella', 'Singh', 'Other', 'isabella.singh656@yahoo.com', '1974-04-02', 'Turkey'),
    ('David', 'Bell', 'Male', 'david.bell783@icloud.com', '1958-04-03', 'South Africa'),
    ('Alexander', 'Williams', 'Other', 'alexander.williams707@yahoo.com', '1997-02-03', 'Denmark'),
    ('Natalie', 'Lopez', 'Female', 'natalie.lopez100@feeblurner.com', '2004-11-02', 'Turkey'),
    ('Donald', 'Thompson', 'Other', 'donald.thompson342@feeblurner.com', '1979-04-02', 'Indonesia'),
    ('Eleanor', 'Roberts', 'Female', 'eleanor.roberts565@feeblurner.com', '1976-11-20', 'Kenya'),
    ('Leah', 'Murphy', 'Other', 'leah.murphy683@outlook.com', '1959-09-05', 'UAE'),
    ('Zoe', 'Rogers', 'Other', 'zoe.rogers433@feeblurner.com', '1977-12-22', 'UAE'),
    ('Camila', 'Perez', 'Other', 'camila.perez187@outlook.com', '1966-12-22', 'Finland'),
    ('Jason', 'Hughes', 'Female', 'jason.hughes144@mail.com', '1988-09-02', 'Canada'),
    ('Chloe', 'Hernandez', 'Male', 'chloe.hernandez145@hotmail.com', '1970-07-26', 'Italy'),
    ('Rebecca', 'Davis', 'Male', null, '1985-05-18', 'Denmark'),
    ('Charles', 'Matuschek', 'Other', 'charles.matuschek229@feeblurner.com', '1958-09-21', 'South Korea'),
    ('Timothy', 'Scott', 'Female', 'timothy.scott552@yahoo.com', '1995-02-22', 'South Korea'),
    ('Brandon', 'Garcia', 'Other', 'brandon.garcia51@gmail.com', '2004-07-20', 'Spain'),
    ('Dennis', 'Hassan', 'Male', 'dennis.hassan40@yahoo.com', '1993-12-18', 'Turkey'),
    ('Elizabeth', 'Peterson', 'Other', 'elizabeth.peterson937@icloud.com', '1965-10-04', 'Egypt'),
    ('Rebecca', 'Turner', 'Male', 'rebecca.turner208@hotmail.com', '1958-07-08', 'South Africa'),
    ('Violet', 'Lewis', 'Male', 'violet.lewis76@yahoo.com', '1976-02-12', 'Brazil'),
    ('Harper', 'Matuschek', 'Female', null, '1986-08-16', 'Brazil'),
    ('Audrey', 'Kelly', 'Female', 'audrey.kelly184@mail.com', '1975-11-13', 'Nigeria'),
    ('Isabella', 'Williams', 'Other', null, '1951-12-19', 'UAE'),
    ('Susan', 'Smith', 'Male', 'susan.smith478@hotmail.com', '1981-06-05', 'Malaysia'),
    ('Anthony', 'Hassan', 'Male', 'anthony.hassan361@gmail.com', '1985-03-27', 'UAE'),
    ('Charles', 'White', 'Other', 'charles.white737@feeblurner.com', '1987-12-02', 'Portugal'),
    ('Ronald', 'Bennett', 'Male', 'ronald.bennett893@mail.com', '1978-06-11', 'Norway'),
    ('Penelope', 'Rogers', 'Other', 'penelope.rogers658@yahoo.com', '1984-07-16', 'Colombia'),
    ('Olivia', 'Thompson', 'Female', 'olivia.thompson676@yahoo.com', '2000-07-12', 'Pakistan'),
    ('Rebecca', 'Nelson', 'Other', 'rebecca.nelson290@gmail.com', '1978-07-26', 'South Korea'),
    ('Karen', 'Nelson', 'Male', 'karen.nelson263@feeblurner.com', '1961-07-20', 'Colombia'),
    ('Justin', 'Ramirez', 'Male', 'justin.ramirez67@outlook.com', '1975-04-01', 'Chile'),
    ('Nicholas', 'Garcia', 'Male', 'nicholas.garcia861@yahoo.com', '2000-09-28', 'Italy'),
    ('Claire', 'Bell', 'Male', 'claire.bell562@feeblurner.com', '2005-10-13', 'Vietnam'),
    ('Evelyn', 'Rogers', 'Female', 'evelyn.rogers143@gmail.com', '1986-05-23', 'United States'),
    ('Donald', 'Rogers', 'Male', 'donald.rogers195@outlook.com', '1986-11-12', 'New Zealand'),
    ('Nicholas', 'Brown', 'Female', 'nicholas.brown455@hotmail.com', '1991-06-12', 'South Korea'),
    ('Chloe', 'Wilson', 'Female', 'chloe.wilson512@outlook.com', '1951-07-20', 'Australia'),
    ('Miguel', 'King', 'Male', null, '1984-07-13', 'Egypt'),
    ('George', 'King', 'Male', 'george.king835@yahoo.com', '1958-03-25', 'Australia'),
    ('Eric', 'Stewart', 'Male', 'eric.stewart332@yahoo.com', '1966-09-14', 'Egypt'),
    ('Barbara', 'Davis', 'Other', 'barbara.davis812@outlook.com', '1983-10-10', 'Canada'),
    ('Charlotte', 'Beardon', 'Male', 'charlotte.beardon449@feeblurner.com', '1966-02-12', 'France'),
    ('Ella', 'Murphy', 'Other', 'ella.murphy926@mail.com', '1974-07-08', 'Mexico'),
    ('Ava', 'Allen', 'Other', 'ava.allen766@icloud.com', '1971-07-19', 'Nigeria'),
    ('John', 'Bailey', 'Female', null, '1982-12-20', 'Australia'),
    ('Emma', 'Singh', 'Male', 'emma.singh750@hotmail.com', '1954-10-26', 'Nigeria'),
    ('Daniel', 'Stewart', 'Male', 'daniel.stewart930@hotmail.com', '1968-04-01', 'Chile'),
    ('Luna', 'James', 'Female', 'luna.james841@outlook.com', '1992-01-16', 'Spain'),
    ('Jason', 'Robinson', 'Male', 'jason.robinson776@feeblurner.com', '1976-12-03', 'United Kingdom'),
    ('Brian', 'Patel', 'Male', 'brian.patel57@outlook.com', '1950-11-02', 'UAE'),
    ('William', 'Singh', 'Male', 'william.singh771@gmail.com', '1987-10-03', 'South Africa'),
    ('Matthew', 'Jackson', 'Female', 'matthew.jackson144@feeblurner.com', '2000-09-28', 'Sweden'),
    ('Jennifer', 'Murphy', 'Other', 'jennifer.murphy464@mail.com', '1969-01-07', 'Colombia'),
    ('Zoe', 'Hill', 'Male', null, '1960-07-25', 'United Kingdom'),
    ('Penelope', 'Gray', 'Female', 'penelope.gray395@feeblurner.com', '1998-10-15', 'Vietnam'),
    ('Barbara', 'Brown', 'Female', 'barbara.brown955@gmail.com', '1966-01-11', 'UAE'),
    ('Michael', 'Cooper', 'Other', 'michael.cooper377@gmail.com', '1999-03-20', 'India'),
    ('Chloe', 'Evans', 'Other', 'chloe.evans886@mail.com', '1968-01-22', 'Italy'),
    ('William', 'Hassan', 'Other', null, '1997-12-25', 'Poland'),
    ('Elizabeth', 'Khan', 'Male', 'elizabeth.khan958@icloud.com', '1979-05-22', 'Norway'),
    ('Eric', 'Watson', 'Male', null, '1964-11-09', 'UAE'),
    ('Larry', 'Cruz', 'Female', 'larry.cruz885@icloud.com', '2002-03-10', 'New Zealand'),
    ('Audrey', 'Gray', 'Male', 'audrey.gray223@gmail.com', '1990-12-07', 'Malaysia'),
    ('Aaron', 'Beardon', 'Other', 'aaron.beardon133@outlook.com', '1983-11-26', 'Netherlands'),
    ('Omar', 'Peterson', 'Male', 'omar.peterson198@mail.com', '1953-05-25', 'Spain'),
    ('Addison', 'Carter', 'Other', 'addison.carter59@hotmail.com', '1985-08-01', 'Malaysia'),
    ('Kevin', 'Flores', 'Male', 'kevin.flores502@outlook.com', '1998-12-13', 'Denmark'),
    ('Michael', 'Matuschek', 'Other', 'michael.matuschek647@icloud.com', '1964-10-03', 'Denmark'),
    ('Stella', 'Reed', 'Other', 'stella.reed225@gmail.com', '1964-06-21', 'India'),
    ('Joshua', 'Cook', 'Other', 'joshua.cook712@icloud.com', '2005-03-09', 'Argentina'),
    ('Robert', 'Allen', 'Male', 'robert.allen112@mail.com', '1997-09-17', 'New Zealand'),
    ('Thomas', 'Hassan', 'Other', 'thomas.hassan466@outlook.com', '1978-07-20', 'Brazil'),
    ('Nora', 'Thomas', 'Other', null, '1994-01-15', 'Italy'),
    ('John', 'Phillips', 'Female', null, '1996-11-07', 'South Africa'),
    ('Jeffrey', 'Rogers', 'Female', null, '1961-03-25', 'India'),
    ('Aria', 'Williams', 'Other', 'aria.williams577@gmail.com', '1970-03-21', 'Nigeria'),
    ('Christopher', 'Patel', 'Other', 'christopher.patel383@hotmail.com', '1993-02-01', 'Thailand'),
    ('Lucas', 'Morris', 'Female', 'lucas.morris558@yahoo.com', '1994-05-11', 'United Kingdom'),
    ('Leah', 'Brown', 'Male', 'leah.brown567@yahoo.com', '1984-12-22', 'Saudi Arabia'),
    ('Savannah', 'Taylor', 'Other', 'savannah.taylor912@outlook.com', '1958-07-11', 'China'),
    ('Jacob', 'Colmore', 'Other', 'jacob.colmore957@yahoo.com', '1966-08-23', 'New Zealand'),
    ('George', 'Beardon', 'Male', 'george.beardon730@hotmail.com', '1969-03-04', 'Nigeria'),
    ('Ronald', 'Cox', 'Female', null, '1961-08-03', 'Finland'),
    ('Scarlett', 'Wood', 'Other', 'scarlett.wood674@icloud.com', '1986-04-18', 'India'),
    ('Victoria', 'Smith', 'Male', null, '1965-03-04', 'Pakistan'),
    ('Patricia', 'Hughes', 'Female', 'patricia.hughes320@gmail.com', '1986-01-08', 'Vietnam'),
    ('Larry', 'Cruz', 'Male', 'larry.cruz675@hotmail.com', '1962-06-15', 'United States'),
    ('Isabella', 'White', 'Other', null, '1989-06-04', 'Germany'),
    ('Omar', 'Martin', 'Female', 'omar.martin193@outlook.com', '1978-12-11', 'India'),
    ('William', 'Bell', 'Other', null, '1974-03-04', 'South Africa'),
    ('Hazel', 'Bailey', 'Female', 'hazel.bailey413@mail.com', '1971-07-28', 'France'),
    ('Alexander', 'Nelson', 'Female', 'alexander.nelson10@yahoo.com', '1964-01-20', 'South Korea'),
    ('Hazel', 'Clark', 'Other', 'hazel.clark519@gmail.com', '1996-10-22', 'Indonesia'),
    ('Emma', 'Kumar', 'Other', 'emma.kumar422@icloud.com', '1984-08-12', 'Finland'),
    ('Patricia', 'Cox', 'Other', 'patricia.cox1@outlook.com', '1989-06-12', 'Canada'),
    ('Audrey', 'Sanchez', 'Male', 'audrey.sanchez624@hotmail.com', '1980-02-28', 'Chile'),
    ('Daniel', 'Shah', 'Female', 'daniel.shah660@yahoo.com', '1951-10-14', 'South Korea'),
    ('Scott', 'Ali', 'Male', 'scott.ali538@outlook.com', '1981-08-06', 'Kenya'),
    ('Violet', 'Bell', 'Male', 'violet.bell862@mail.com', '1955-03-21', 'France'),
    ('Ronald', 'Miller', 'Female', 'ronald.miller731@feeblurner.com', '1998-07-04', 'Egypt'),
    ('Scott', 'Thompson', 'Other', 'scott.thompson556@icloud.com', '1999-04-19', 'Spain'),
    ('John', 'Cox', 'Other', 'john.cox636@mail.com', '1968-11-11', 'Turkey'),
    ('Christopher', 'Miller', 'Other', null, '1990-09-09', 'South Africa'),
    ('Gregory', 'Hughes', 'Male', 'gregory.hughes423@mail.com', '1963-01-08', 'Italy'),
    ('Sarah', 'Patel', 'Other', 'sarah.patel652@hotmail.com', '1973-10-23', 'Nigeria'),
    ('Lily', 'Ward', 'Female', 'lily.ward718@yahoo.com', '1978-02-25', 'Portugal'),
    ('Jennifer', 'Wright', 'Male', 'jennifer.wright538@hotmail.com', '1959-12-26', 'Mexico'),
    ('David', 'Roberts', 'Female', 'david.roberts298@feeblurner.com', '1963-01-01', 'Malaysia'),
    ('Charles', 'Colmore', 'Female', null, '1983-05-17', 'Portugal'),
    ('Harper', 'Bailey', 'Male', null, '2002-04-26', 'Poland'),
    ('Savannah', 'Hughes', 'Male', null, '1997-11-01', 'China'),
    ('Penelope', 'Cooper', 'Male', 'penelope.cooper402@hotmail.com', '1952-05-22', 'Denmark'),
    ('Frank', 'Wood', 'Other', 'frank.wood934@outlook.com', '1974-03-18', 'Colombia'),
    ('Layla', 'Turner', 'Female', 'layla.turner62@gmail.com', '1999-09-06', 'Denmark'),
    ('Kevin', 'Lee', 'Female', 'kevin.lee432@mail.com', '1960-03-10', 'Japan'),
    ('Violet', 'Hughes', 'Female', 'violet.hughes215@feeblurner.com', '2001-06-28', 'Turkey'),
    ('James', 'Singh', 'Male', 'james.singh247@outlook.com', '1979-07-24', 'South Africa'),
    ('Isabella', 'Smith', 'Other', 'isabella.smith946@hotmail.com', '1990-09-23', 'Pakistan'),
    ('Addison', 'Parker', 'Male', 'addison.parker508@yahoo.com', '1991-12-07', 'Poland'),
    ('Stella', 'James', 'Female', 'stella.james237@mail.com', '1959-01-09', 'Chile'),
    ('Aaron', 'Gonzalez', 'Female', 'aaron.gonzalez933@outlook.com', '1975-11-09', 'Denmark'),
    ('Leah', 'Taylor', 'Female', 'leah.taylor380@hotmail.com', '1985-05-28', 'Netherlands'),
    ('Ronald', 'Hill', 'Female', 'ronald.hill563@mail.com', '1979-05-11', 'United States'),
    ('Claire', 'Green', 'Other', 'claire.green99@outlook.com', '1997-05-26', 'Indonesia'),
    ('Michael', 'Bailey', 'Female', null, '2004-01-23', 'Turkey'),
    ('Penelope', 'Rodriguez', 'Other', 'penelope.rodriguez76@gmail.com', '1994-01-20', 'Chile'),
    ('Rebecca', 'Hall', 'Male', 'rebecca.hall673@yahoo.com', '1977-03-11', 'Portugal'),
    ('Isabella', 'Shah', 'Male', 'isabella.shah787@icloud.com', '1977-09-08', 'Indonesia'),
    ('Rebecca', 'Turner', 'Male', null, '1956-09-05', 'Norway'),
    ('Christopher', 'Jackson', 'Female', 'christopher.jackson480@gmail.com', '1981-08-08', 'China'),
    ('Lily', 'Brown', 'Female', 'lily.brown70@gmail.com', '1982-07-08', 'Norway'),
    ('Evelyn', 'Lopez', 'Female', 'evelyn.lopez14@feeblurner.com', '1978-02-23', 'Norway'),
    ('Karen', 'Matuschek', 'Other', 'karen.matuschek441@icloud.com', '1979-10-28', 'China'),
    ('Brandon', 'Walker', 'Female', null, '1989-08-21', 'South Korea'),
    ('Camila', 'Colmore', 'Other', 'camila.colmore814@gmail.com', '1968-11-01', 'Mexico'),
    ('Leah', 'Nelson', 'Male', 'leah.nelson330@feeblurner.com', '1991-12-09', 'India'),
    ('Amelia', 'Kumar', 'Other', 'amelia.kumar990@hotmail.com', '1987-07-15', 'Argentina'),
    ('Ella', 'James', 'Other', 'ella.james645@feeblurner.com', '1954-04-10', 'United States'),
    ('Audrey', 'Stewart', 'Other', 'audrey.stewart579@mail.com', '1972-02-25', 'Australia'),
    ('Miguel', 'Johnson', 'Male', 'miguel.johnson428@gmail.com', '1966-04-27', 'Malaysia'),
    ('Nora', 'Rivera', 'Female', 'nora.rivera180@outlook.com', '1969-07-20', 'Saudi Arabia'),
    ('Omar', 'Jackson', 'Other', null, '1962-10-21', 'Chile'),
    ('Leah', 'Jackson', 'Other', null, '1952-11-13', 'New Zealand'),
    ('Savannah', 'Patel', 'Male', 'savannah.patel862@outlook.com', '1977-10-16', 'Malaysia'),
    ('Elizabeth', 'Ward', 'Male', null, '1967-02-22', 'Colombia'),
    ('Adriana', 'Robinson', 'Female', 'adriana.robinson548@feeblurner.com', '1963-07-22', 'South Korea'),
    ('Lily', 'Moore', 'Other', 'lily.moore930@feeblurner.com', '1971-08-08', 'Canada'),
    ('Ryan', 'Hill', 'Female', 'ryan.hill864@feeblurner.com', '1967-01-26', 'Spain'),
    ('Lily', 'Brown', 'Male', 'lily.brown244@mail.com', '1958-11-28', 'Turkey'),
    ('Madison', 'Thomas', 'Female', 'madison.thomas336@icloud.com', '1970-02-27', 'Italy'),
    ('Andrew', 'Moore', 'Male', 'andrew.moore577@feeblurner.com', '1953-07-04', 'Japan'),
    ('Tyler', 'Moore', 'Male', 'tyler.moore19@yahoo.com', '1965-04-19', 'South Korea'),
    ('George', 'Allen', 'Female', 'george.allen197@feeblurner.com', '1952-02-12', 'India'),
    ('David', 'Rogers', 'Female', 'david.rogers331@icloud.com', '1967-08-24', 'Germany'),
    ('Dennis', 'Ramirez', 'Male', 'dennis.ramirez471@hotmail.com', '1969-07-08', 'Malaysia'),
    ('Sofia', 'Ali', 'Female', 'sofia.ali32@yahoo.com', '1958-05-22', 'Denmark'),
    ('Jerry', 'Robinson', 'Female', 'jerry.robinson148@icloud.com', '2002-12-16', 'Spain'),
    ('Aurora', 'Brown', 'Other', null, '1976-03-25', 'Denmark'),
    ('Harper', 'Rivera', 'Male', 'harper.rivera810@yahoo.com', '1956-11-10', 'Kenya'),
    ('Riley', 'Howard', 'Male', 'riley.howard898@outlook.com', '1985-06-01', 'Japan'),
    ('Linda', 'Ahmed', 'Other', 'linda.ahmed625@mail.com', '1965-03-16', 'Brazil'),
    ('Justin', 'Wood', 'Male', 'justin.wood268@gmail.com', '1973-04-14', 'Indonesia'),
    ('Eric', 'Singh', 'Other', 'eric.singh242@icloud.com', '1989-06-10', 'Germany'),
    ('Patrick', 'Harris', 'Other', null, '1995-10-23', 'Japan'),
    ('Ava', 'Hernandez', 'Other', 'ava.hernandez172@yahoo.com', '1979-12-13', 'Egypt'),
    ('Richard', 'Matuschek', 'Female', 'richard.matuschek258@feeblurner.com', '1964-03-28', 'Netherlands'),
    ('Sophia', 'Hill', 'Female', 'sophia.hill904@feeblurner.com', '1969-02-19', 'South Korea'),
    ('Justin', 'Ramirez', 'Other', null, '2003-04-16', 'Bangladesh'),
    ('Violet', 'Ahmed', 'Male', 'violet.ahmed64@feeblurner.com', '1952-06-10', 'United Kingdom'),
    ('Steven', 'Hernandez', 'Female', 'steven.hernandez19@yahoo.com', '1956-10-11', 'Philippines'),
    ('Jacob', 'Brooks', 'Male', 'jacob.brooks783@gmail.com', '1975-12-09', 'South Africa'),
    ('Joseph', 'Baker', 'Female', 'joseph.baker6@yahoo.com', '1963-08-28', 'China'),
    ('Patricia', 'Cooper', 'Male', 'patricia.cooper816@outlook.com', '1986-09-20', 'Saudi Arabia'),
    ('Amelia', 'Taylor', 'Other', null, '1988-02-09', 'France'),
    ('Richard', 'Peterson', 'Female', 'richard.peterson894@hotmail.com', '1973-05-21', 'Nigeria'),
    ('Samuel', 'Edwards', 'Other', 'samuel.edwards432@outlook.com', '1974-04-01', 'Saudi Arabia'),
    ('Jacob', 'Thomas', 'Other', 'jacob.thomas249@icloud.com', '1995-03-22', 'Finland'),
    ('Natalie', 'Rogers', 'Male', 'natalie.rogers970@hotmail.com', '1976-08-25', 'Australia'),
    ('Hazel', 'King', 'Male', 'hazel.king389@yahoo.com', '1978-08-06', 'South Korea'),
    ('Ronald', 'Rodriguez', 'Male', 'ronald.rodriguez322@mail.com', '1987-05-19', 'Malaysia'),
    ('Jose', 'Roberts', 'Male', 'jose.roberts466@gmail.com', '1956-09-17', 'Germany'),
    ('Grace', 'Thompson', 'Male', null, '1955-09-01', 'Vietnam'),
    ('Nicholas', 'Anderson', 'Other', 'nicholas.anderson135@gmail.com', '1982-04-14', 'France'),
    ('Jennifer', 'Reed', 'Other', 'jennifer.reed673@mail.com', '1988-11-19', 'Poland'),
    ('Hannah', 'Hill', 'Male', 'hannah.hill129@yahoo.com', '1973-07-13', 'Saudi Arabia'),
    ('Leah', 'Baker', 'Male', 'leah.baker41@feeblurner.com', '1976-12-05', 'South Korea'),
    ('Mia', 'Bell', 'Male', 'mia.bell644@outlook.com', '1989-06-12', 'Philippines'),
    ('Justin', 'Davis', 'Male', 'justin.davis975@mail.com', '1993-06-25', 'Kenya'),
    ('Hannah', 'Reed', 'Female', 'hannah.reed106@gmail.com', '1977-11-03', 'Australia'),
    ('Sarah', 'Kelly', 'Female', 'sarah.kelly482@feeblurner.com', '1995-01-15', 'Philippines'),
    ('Alexander', 'Patel', 'Other', 'alexander.patel894@yahoo.com', '2003-02-14', 'Brazil'),
    ('Savannah', 'Murphy', 'Other', null, '1999-12-01', 'Poland'),
    ('Stephen', 'Myers', 'Female', 'stephen.myers531@feeblurner.com', '1973-07-19', 'Denmark'),
    ('George', 'Ramirez', 'Female', 'george.ramirez248@outlook.com', '1991-02-13', 'Ireland'),
    ('Sophia', 'Stewart', 'Other', 'sophia.stewart244@icloud.com', '1993-06-06', 'United Kingdom'),
    ('Sofia', 'Garcia', 'Female', 'sofia.garcia192@outlook.com', '1970-04-11', 'Spain'),
    ('Scarlett', 'Wood', 'Male', 'scarlett.wood605@gmail.com', '1955-12-28', 'Colombia'),
    ('Leah', 'Reyes', 'Female', 'leah.reyes828@icloud.com', '1955-05-03', 'Pakistan'),
    ('Adriana', 'Davis', 'Male', 'adriana.davis288@yahoo.com', '2001-08-02', 'Brazil'),
    ('Steven', 'Nguyen', 'Female', null, '1998-06-11', 'Egypt'),
    ('Jerry', 'Lewis', 'Male', 'jerry.lewis451@icloud.com', '1953-09-01', 'France'),
    ('Timothy', 'Colmore', 'Male', 'timothy.colmore996@hotmail.com', '1976-09-01', 'Bangladesh'),
    ('Savannah', 'Myers', 'Female', 'savannah.myers27@outlook.com', '2003-06-09', 'Italy'),
    ('Dennis', 'Reyes', 'Other', 'dennis.reyes926@hotmail.com', '1994-09-14', 'Turkey'),
    ('George', 'Bennett', 'Male', 'george.bennett780@icloud.com', '1951-09-05', 'Brazil'),
    ('Eleanor', 'Kumar', 'Other', 'eleanor.kumar132@gmail.com', '1980-01-08', 'New Zealand'),
    ('Jennifer', 'Rivera', 'Female', 'jennifer.rivera594@feeblurner.com', '1988-02-20', 'Colombia'),
    ('Rebecca', 'Moore', 'Female', 'rebecca.moore486@mail.com', '1968-12-05', 'South Korea'),
    ('Audrey', 'Carter', 'Female', 'audrey.carter97@mail.com', '2004-03-10', 'New Zealand'),
    ('Patrick', 'Anderson', 'Other', 'patrick.anderson530@gmail.com', '1957-04-12', 'Vietnam'),
    ('Stephen', 'Allen', 'Female', 'stephen.allen480@gmail.com', '2001-12-19', 'Portugal'),
    ('Ronald', 'Sterling', 'Other', 'ronald.sterling312@icloud.com', '1992-04-12', 'Colombia'),
    ('Michael', 'White', 'Male', 'michael.white722@mail.com', '1963-05-15', 'Indonesia'),
    ('Jessica', 'Hernandez', 'Female', 'jessica.hernandez578@icloud.com', '1954-08-18', 'Brazil'),
    ('Aurora', 'King', 'Male', null, '2000-11-14', 'UAE'),
    ('Timothy', 'Matuschek', 'Male', 'timothy.matuschek962@hotmail.com', '1967-12-01', 'Japan'),
    ('Victoria', 'Roberts', 'Other', 'victoria.roberts503@icloud.com', '1989-09-18', 'France'),
    ('Joshua', 'Garcia', 'Male', 'joshua.garcia918@feeblurner.com', '1954-02-13', 'UAE'),
    ('Diego', 'Hughes', 'Female', 'diego.hughes301@icloud.com', '1993-10-15', 'Kenya'),
    ('Evelyn', 'Peterson', 'Female', 'evelyn.peterson11@hotmail.com', '1970-03-17', 'United States'),
    ('George', 'Lopez', 'Female', 'george.lopez911@yahoo.com', '1956-03-24', 'Nigeria'),
    ('Edward', 'Jones', 'Female', 'edward.jones51@hotmail.com', '1966-04-11', 'Japan'),
    ('Andrew', 'Ali', 'Female', 'andrew.ali808@outlook.com', '1964-01-15', 'Canada'),
    ('Claire', 'Price', 'Female', 'claire.price772@outlook.com', '1978-08-14', 'Sweden'),
    ('Fernanda', 'Roberts', 'Female', 'fernanda.roberts839@feeblurner.com', '1993-11-11', 'Vietnam'),
    ('Lucas', 'Reyes', 'Male', 'lucas.reyes959@hotmail.com', '2000-02-13', 'Pakistan'),
    ('Mia', 'Sanchez', 'Female', 'mia.sanchez6@mail.com', '1957-12-16', 'France'),
    ('Nicholas', 'Kelly', 'Other', 'nicholas.kelly339@mail.com', '1980-12-04', 'United States'),
    ('Benjamin', 'Turner', 'Female', 'benjamin.turner801@outlook.com', '1981-05-14', 'Colombia'),
    ('Evelyn', 'Wilson', 'Male', 'evelyn.wilson988@hotmail.com', '1994-10-15', 'Denmark'),
    ('Lucas', 'Kumar', 'Female', 'lucas.kumar880@mail.com', '1973-12-10', 'Mexico'),
    ('Brian', 'Rivera', 'Other', 'brian.rivera136@yahoo.com', '2005-01-03', 'South Korea'),
    ('Rebecca', 'Ibrahim', 'Male', null, '1986-03-26', 'Egypt'),
    ('Emily', 'Hassan', 'Other', 'emily.hassan858@hotmail.com', '1953-02-13', 'Norway'),
    ('Anthony', 'Hernandez', 'Other', null, '1995-09-02', 'Philippines'),
    ('Aaron', 'Sterling', 'Female', 'aaron.sterling449@hotmail.com', '1979-06-02', 'Norway'),
    ('Charlotte', 'Bailey', 'Female', 'charlotte.bailey244@hotmail.com', '1996-11-11', 'Norway'),
    ('Jose', 'Brown', 'Other', 'jose.brown357@outlook.com', '1959-03-18', 'Egypt'),
    ('Zoe', 'Turner', 'Female', 'zoe.turner309@yahoo.com', '1991-05-02', 'Canada'),
    ('Rebecca', 'Matuschek', 'Female', 'rebecca.matuschek180@yahoo.com', '1956-09-09', 'China'),
    ('Madison', 'Lee', 'Other', 'madison.lee611@feeblurner.com', '1993-11-04', 'South Africa'),
    ('Jose', 'Young', 'Male', 'jose.young762@outlook.com', '1990-07-10', 'Italy'),
    ('Richard', 'Torres', 'Other', 'richard.torres352@icloud.com', '1985-09-24', 'South Korea'),
    ('Lucas', 'Peterson', 'Female', 'lucas.peterson376@mail.com', '2003-10-03', 'UAE'),
    ('Karen', 'Morris', 'Male', 'karen.morris143@mail.com', '1993-07-21', 'Thailand'),
    ('Linda', 'Lewis', 'Male', 'linda.lewis513@outlook.com', '1985-03-20', 'Turkey'),
    ('Barbara', 'Singh', 'Other', 'barbara.singh535@mail.com', '1999-04-21', 'United Kingdom'),
    ('Joshua', 'Kumar', 'Other', 'joshua.kumar624@gmail.com', '1983-02-24', 'Portugal'),
    ('Mark', 'Reyes', 'Female', 'mark.reyes932@feeblurner.com', '1971-07-21', 'United Kingdom'),
    ('Sophia', 'Kumar', 'Other', 'sophia.kumar221@gmail.com', '1971-08-02', 'Spain'),
    ('Emma', 'Hill', 'Other', 'emma.hill794@yahoo.com', '1954-05-19', 'Brazil'),
    ('Isabella', 'Murphy', 'Male', 'isabella.murphy631@feeblurner.com', '1990-08-14', 'Pakistan'),
    ('Riley', 'Nguyen', 'Other', 'riley.nguyen99@mail.com', '1998-12-16', 'Brazil'),
    ('Omar', 'Smith', 'Other', null, '2004-04-06', 'Nigeria'),
    ('Susan', 'Moore', 'Female', 'susan.moore480@gmail.com', '1984-12-20', 'Ireland'),
    ('Larry', 'Stewart', 'Male', 'larry.stewart122@yahoo.com', '1982-12-14', 'Mexico'),
    ('Jose', 'Lee', 'Female', 'jose.lee384@hotmail.com', '1978-11-09', 'Thailand'),
    ('William', 'Lewis', 'Female', 'william.lewis942@feeblurner.com', '1979-03-04', 'United States'),
    ('Ella', 'Allen', 'Male', 'ella.allen838@hotmail.com', '2003-07-05', 'Mexico'),
    ('Brian', 'Ramirez', 'Other', 'brian.ramirez933@yahoo.com', '1961-01-08', 'Spain'),
    ('Audrey', 'Collins', 'Female', 'audrey.collins784@icloud.com', '1990-03-20', 'Argentina'),
    ('Jennifer', 'Martin', 'Other', 'jennifer.martin902@outlook.com', '1993-06-07', 'Portugal'),
    ('Adriana', 'Watson', 'Female', 'adriana.watson726@outlook.com', '1954-07-13', 'Finland'),
    ('Emily', 'Robinson', 'Male', 'emily.robinson304@mail.com', '1969-01-19', 'Japan'),
    ('Ryan', 'Nguyen', 'Other', null, '1997-06-28', 'Pakistan'),
    ('Edward', 'Nguyen', 'Other', 'edward.nguyen792@feeblurner.com', '1954-04-02', 'Japan'),
    ('Joseph', 'Khan', 'Female', 'joseph.khan559@feeblurner.com', '1968-09-24', 'Colombia'),
    ('Patrick', 'Mitchell', 'Other', 'patrick.mitchell720@gmail.com', '1970-05-03', 'Pakistan'),
    ('David', 'Price', 'Other', 'david.price370@icloud.com', '1989-10-12', 'Bangladesh'),
    ('Susan', 'Carter', 'Female', null, '1960-06-13', 'Norway'),
    ('James', 'Morgan', 'Female', 'james.morgan484@yahoo.com', '1979-04-10', 'Portugal'),
    ('Brandon', 'Martinez', 'Other', 'brandon.martinez822@outlook.com', '1985-05-06', 'Turkey'),
    ('Penelope', 'Ibrahim', 'Other', 'penelope.ibrahim513@hotmail.com', '1975-11-05', 'Argentina'),
    ('Emily', 'Howard', 'Other', 'emily.howard142@icloud.com', '2002-04-27', 'Vietnam'),
    ('Diego', 'Garcia', 'Female', 'diego.garcia876@mail.com', '2002-05-22', 'Philippines'),
    ('Olivia', 'Stewart', 'Other', 'olivia.stewart92@feeblurner.com', '1968-02-27', 'South Africa'),
    ('Nicholas', 'Diaz', 'Other', 'nicholas.diaz238@feeblurner.com', '1984-01-27', 'Finland'),
    ('Mark', 'Hernandez', 'Female', null, '1980-07-26', 'Japan'),
    ('Jeffrey', 'Carter', 'Other', 'jeffrey.carter824@mail.com', '1993-10-07', 'Pakistan'),
    ('Stella', 'Rogers', 'Female', 'stella.rogers829@yahoo.com', '1964-12-25', 'UAE'),
    ('Patrick', 'Ali', 'Female', 'patrick.ali750@outlook.com', '1998-11-23', 'Brazil'),
    ('Anthony', 'Gomez', 'Other', null, '1978-05-02', 'China'),
    ('Donald', 'Harris', 'Female', 'donald.harris202@mail.com', '1967-05-07', 'Canada'),
    ('Barbara', 'Phillips', 'Other', null, '1962-03-27', 'Philippines'),
    ('Donald', 'Collins', 'Other', 'donald.collins915@hotmail.com', '1951-01-03', 'Chile'),
    ('Harper', 'Hall', 'Other', 'harper.hall273@gmail.com', '1970-10-11', 'Brazil'),
    ('Carlos', 'Walker', 'Other', 'carlos.walker787@yahoo.com', '1971-01-07', 'Malaysia'),
    ('George', 'Rivera', 'Female', null, '1953-10-08', 'Mexico'),
    ('Sarah', 'Gomez', 'Female', 'sarah.gomez364@outlook.com', '1965-12-25', 'UAE'),
    ('Stephen', 'Miller', 'Male', 'stephen.miller811@icloud.com', '1974-02-03', 'South Africa'),
    ('Isabella', 'Cooper', 'Female', 'isabella.cooper229@outlook.com', '1987-05-20', 'Vietnam'),
    ('Rebecca', 'Allen', 'Other', 'rebecca.allen587@icloud.com', '2005-03-26', 'Australia'),
    ('Andrew', 'Williams', 'Female', 'andrew.williams102@feeblurner.com', '1977-11-08', 'Denmark'),
    ('Rebecca', 'Parker', 'Other', 'rebecca.parker779@icloud.com', '1971-07-26', 'Denmark'),
    ('Charles', 'Flores', 'Male', 'charles.flores108@yahoo.com', '1978-11-19', 'Malaysia'),
    ('Abigail', 'Allen', 'Other', 'abigail.allen666@icloud.com', '1981-03-12', 'Nigeria'),
    ('Carlos', 'Gray', 'Other', 'carlos.gray402@gmail.com', '1970-02-06', 'Vietnam'),
    ('David', 'Lee', 'Other', 'david.lee981@mail.com', '1956-12-09', 'Kenya'),
    ('Harper', 'Carter', 'Other', 'harper.carter660@mail.com', '1960-02-07', 'UAE'),
    ('Jack', 'Matuschek', 'Other', 'jack.matuschek134@outlook.com', '1981-02-20', 'France'),
    ('Ronald', 'Sterling', 'Female', 'ronald.sterling642@mail.com', '2005-09-05', 'Portugal'),
    ('Addison', 'Bailey', 'Female', 'addison.bailey708@hotmail.com', '1974-10-23', 'Bangladesh'),
    ('Benjamin', 'Price', 'Other', null, '1953-08-19', 'Portugal'),
    ('Mark', 'Harris', 'Other', 'mark.harris114@outlook.com', '1971-06-16', 'Saudi Arabia'),
    ('Linda', 'Allen', 'Male', 'linda.allen108@mail.com', '2005-07-01', 'Netherlands'),
    ('Jason', 'Martinez', 'Female', 'jason.martinez991@gmail.com', '1969-05-18', 'India'),
    ('Ava', 'Smith', 'Other', 'ava.smith30@feeblurner.com', '1960-09-05', 'South Korea'),
    ('Sofia', 'Bennett', 'Other', 'sofia.bennett457@outlook.com', '1972-09-08', 'Netherlands'),
    ('Scarlett', 'Morris', 'Male', 'scarlett.morris307@mail.com', '1984-10-20', 'UAE'),
    ('Luna', 'Morgan', 'Female', 'luna.morgan839@feeblurner.com', '2003-06-24', 'India'),
    ('Victoria', 'Hassan', 'Male', 'victoria.hassan67@hotmail.com', '1995-12-05', 'South Korea'),
    ('Andrew', 'Rodriguez', 'Female', null, '2003-06-01', 'Italy'),
    ('Patrick', 'Thomas', 'Male', 'patrick.thomas260@gmail.com', '1968-03-06', 'Mexico'),
    ('Madison', 'Beardon', 'Male', 'madison.beardon783@mail.com', '2004-11-18', 'New Zealand'),
    ('George', 'Wood', 'Other', 'george.wood228@outlook.com', '1965-12-28', 'Thailand'),
    ('Luna', 'Scott', 'Male', 'luna.scott752@gmail.com', '1991-06-14', 'Malaysia'),
    ('Victoria', 'Hill', 'Other', 'victoria.hill768@feeblurner.com', '1966-02-10', 'France'),
    ('Riley', 'Thomas', 'Female', 'riley.thomas482@yahoo.com', '2002-01-25', 'Italy'),
    ('Jacob', 'Green', 'Other', null, '1994-10-13', 'UAE'),
    ('Richard', 'Gonzalez', 'Male', 'richard.gonzalez612@gmail.com', '1958-01-28', 'Pakistan'),
    ('Daniel', 'Thomas', 'Male', 'daniel.thomas707@feeblurner.com', '1954-04-01', 'Chile'),
    ('Karen', 'James', 'Other', 'karen.james228@gmail.com', '1980-02-16', 'Thailand'),
    ('Aria', 'Williams', 'Female', 'aria.williams402@gmail.com', '1980-03-11', 'United Kingdom'),
    ('Charles', 'Shah', 'Male', 'charles.shah831@mail.com', '1953-01-10', 'Argentina'),
    ('Lily', 'Rogers', 'Other', 'lily.rogers41@feeblurner.com', '1967-05-09', 'France'),
    ('Carlos', 'Shah', 'Female', 'carlos.shah812@mail.com', '1979-06-08', 'Pakistan'),
    ('Mia', 'Peterson', 'Male', 'mia.peterson985@feeblurner.com', '1987-04-04', 'Vietnam'),
    ('Patricia', 'Harris', 'Other', 'patricia.harris101@outlook.com', '1960-10-13', 'Denmark'),
    ('Tyler', 'Bennett', 'Female', 'tyler.bennett627@gmail.com', '1996-01-24', 'UAE'),
    ('Ryan', 'Perez', 'Other', 'ryan.perez873@yahoo.com', '1973-07-05', 'Canada'),
    ('Mary', 'Beardon', 'Other', 'mary.beardon653@hotmail.com', '1969-08-13', 'Italy'),
    ('Brandon', 'Bell', 'Other', 'brandon.bell642@outlook.com', '1955-08-12', 'Finland'),
    ('Amelia', 'Cook', 'Female', 'amelia.cook900@outlook.com', '1995-10-07', 'Netherlands'),
    ('Nora', 'Taylor', 'Male', 'nora.taylor156@outlook.com', '1962-06-03', 'Poland'),
    ('Frank', 'Hernandez', 'Female', null, '2005-04-11', 'Argentina'),
    ('Barbara', 'Thomas', 'Other', 'barbara.thomas654@hotmail.com', '1991-02-09', 'Ireland'),
    ('Anthony', 'Hernandez', 'Other', 'anthony.hernandez16@outlook.com', '1977-05-28', 'Saudi Arabia'),
    ('Brandon', 'Rogers', 'Male', 'brandon.rogers483@mail.com', '1994-05-04', 'Egypt'),
    ('Luna', 'Lewis', 'Other', 'luna.lewis162@feeblurner.com', '1953-08-21', 'Germany'),
    ('Aria', 'Clark', 'Female', 'aria.clark747@yahoo.com', '1983-02-05', 'Sweden'),
    ('Tyler', 'Martin', 'Male', 'tyler.martin422@yahoo.com', '1980-03-09', 'Malaysia'),
    ('Penelope', 'Baker', 'Male', 'penelope.baker26@hotmail.com', '1995-07-18', 'South Korea'),
    ('Evelyn', 'Morris', 'Female', 'evelyn.morris431@mail.com', '1983-12-15', 'Mexico'),
    ('Thomas', 'Gomez', 'Male', 'thomas.gomez81@icloud.com', '1996-09-21', 'Vietnam'),
    ('Hannah', 'Richardson', 'Other', 'hannah.richardson401@outlook.com', '1955-11-22', 'Colombia'),
    ('Thomas', 'Patel', 'Female', 'thomas.patel867@mail.com', '1988-11-09', 'Poland'),
    ('Audrey', 'Torres', 'Other', 'audrey.torres728@icloud.com', '1985-08-24', 'Japan'),
    ('Amelia', 'Smith', 'Other', 'amelia.smith452@hotmail.com', '2003-04-02', 'Indonesia'),
    ('Violet', 'Richardson', 'Male', 'violet.richardson928@gmail.com', '1989-01-17', 'United Kingdom'),
    ('Patrick', 'Mitchell', 'Female', 'patrick.mitchell945@outlook.com', '1988-05-14', 'Italy'),
    ('Patricia', 'Ali', 'Other', 'patricia.ali763@outlook.com', '2000-06-25', 'France'),
    ('Leah', 'Campbell', 'Female', 'leah.campbell28@hotmail.com', '1998-10-21', 'Indonesia'),
    ('Stella', 'Howard', 'Male', 'stella.howard527@hotmail.com', '1964-05-06', 'Thailand'),
    ('Aaron', 'Campbell', 'Female', 'aaron.campbell566@yahoo.com', '1956-12-06', 'Italy'),
    ('Tyler', 'Phillips', 'Other', 'tyler.phillips943@yahoo.com', '1958-03-18', 'Denmark'),
    ('James', 'Mitchell', 'Other', 'james.mitchell241@hotmail.com', '1969-05-25', 'Norway'),
    ('Edward', 'Shah', 'Other', 'edward.shah513@gmail.com', '1997-07-14', 'Turkey'),
    ('Samuel', 'Hernandez', 'Other', 'samuel.hernandez731@icloud.com', '1980-09-26', 'Egypt'),
    ('Nicholas', 'Cox', 'Other', null, '1994-06-24', 'Indonesia'),
    ('Isabella', 'Collins', 'Female', 'isabella.collins316@feeblurner.com', '1997-04-15', 'Colombia'),
    ('Aaron', 'Lee', 'Other', 'aaron.lee74@yahoo.com', '1959-06-06', 'Argentina'),
    ('Omar', 'Rivera', 'Female', 'omar.rivera583@outlook.com', '2002-06-23', 'Egypt'),
    ('Hannah', 'Williams', 'Female', 'hannah.williams751@icloud.com', '1966-11-06', 'Argentina'),
    ('Patrick', 'Anderson', 'Male', 'patrick.anderson714@gmail.com', '1973-06-25', 'Finland'),
    ('Eric', 'Hall', 'Other', 'eric.hall682@icloud.com', '1981-06-11', 'Malaysia'),
    ('Larry', 'Parker', 'Other', 'larry.parker646@hotmail.com', '1981-12-17', 'Saudi Arabia'),
    ('Charles', 'Hill', 'Male', 'charles.hill697@icloud.com', '1988-11-28', 'South Korea'),
    ('Jose', 'Sanchez', 'Male', 'jose.sanchez910@hotmail.com', '2004-09-19', 'South Africa'),
    ('Amelia', 'Campbell', 'Male', 'amelia.campbell547@gmail.com', '1989-07-13', 'Saudi Arabia'),
    ('John', 'Walker', 'Female', 'john.walker916@mail.com', '1984-01-22', 'Thailand'),
    ('George', 'Beardon', 'Male', 'george.beardon641@feeblurner.com', '1995-11-25', 'Portugal'),
    ('Paul', 'Lewis', 'Female', 'paul.lewis590@icloud.com', '1959-10-26', 'Malaysia'),
    ('Elizabeth', 'Rogers', 'Female', 'elizabeth.rogers246@gmail.com', '1956-06-23', 'United Kingdom'),
    ('Lucas', 'Bailey', 'Female', 'lucas.bailey86@outlook.com', '1952-11-13', 'New Zealand'),
    ('Jose', 'Stewart', 'Other', 'jose.stewart258@icloud.com', '1992-09-25', 'Saudi Arabia'),
    ('Madison', 'Patel', 'Female', 'madison.patel441@gmail.com', '1971-04-27', 'Malaysia'),
    ('Emma', 'Carter', 'Other', 'emma.carter979@outlook.com', '1995-05-15', 'Thailand'),
    ('Barbara', 'Green', 'Male', 'barbara.green901@mail.com', '1997-01-01', 'United Kingdom'),
    ('Audrey', 'Hughes', 'Female', 'audrey.hughes485@outlook.com', '1955-05-28', 'Nigeria'),
    ('Christopher', 'James', 'Female', null, '1957-01-03', 'Mexico'),
    ('Emma', 'Thomas', 'Male', 'emma.thomas810@icloud.com', '1974-01-06', 'Chile'),
    ('Sarah', 'Wright', 'Other', 'sarah.wright183@gmail.com', '1980-07-19', 'United States'),
    ('Larry', 'Peterson', 'Female', 'larry.peterson335@feeblurner.com', '1961-06-11', 'Pakistan'),
    ('Nora', 'Ramirez', 'Other', 'nora.ramirez288@feeblurner.com', '2003-06-15', 'Vietnam'),
    ('Samuel', 'Flores', 'Female', 'samuel.flores417@feeblurner.com', '1998-05-06', 'Kenya'),
    ('Jose', 'Williams', 'Female', 'jose.williams288@outlook.com', '1973-08-19', 'Brazil'),
    ('Karen', 'Allen', 'Other', 'karen.allen978@hotmail.com', '1955-05-18', 'Norway'),
    ('Mark', 'Murphy', 'Female', 'mark.murphy722@mail.com', '1963-01-18', 'Thailand'),
    ('George', 'Hall', 'Female', 'george.hall901@gmail.com', '1971-02-26', 'Japan'),
    ('Nicholas', 'Myers', 'Female', 'nicholas.myers244@icloud.com', '1975-01-11', 'Bangladesh'),
    ('Amelia', 'Bailey', 'Male', 'amelia.bailey783@feeblurner.com', '1953-09-15', 'Japan'),
    ('John', 'Flores', 'Male', 'john.flores974@gmail.com', '1999-12-27', 'Poland'),
    ('Grace', 'Gomez', 'Male', 'grace.gomez138@gmail.com', '1986-01-27', 'China'),
    ('Madison', 'Matuschek', 'Male', 'madison.matuschek240@yahoo.com', '1993-03-14', 'Japan'),
    ('Nicholas', 'Hall', 'Female', 'nicholas.hall488@hotmail.com', '1976-02-26', 'Denmark'),
    ('Ella', 'Singh', 'Male', 'ella.singh23@yahoo.com', '1987-11-01', 'Norway'),
    ('Timothy', 'Ali', 'Other', 'timothy.ali982@yahoo.com', '2005-10-09', 'Nigeria'),
    ('Christopher', 'Howard', 'Other', 'christopher.howard478@icloud.com', '1956-11-05', 'Spain'),
    ('Raymond', 'Thomas', 'Male', 'raymond.thomas514@feeblurner.com', '1999-10-27', 'Brazil'),
    ('Samuel', 'Shah', 'Male', 'samuel.shah980@mail.com', '1959-10-02', 'Egypt'),
    ('Isabella', 'Peterson', 'Male', 'isabella.peterson725@mail.com', '2005-06-28', 'Netherlands'),
    ('Aria', 'Stewart', 'Male', 'aria.stewart189@mail.com', '1978-07-17', 'Australia'),
    ('Steven', 'Wright', 'Male', 'steven.wright999@hotmail.com', '1967-01-08', 'Kenya'),
    ('Jeffrey', 'Walker', 'Male', 'jeffrey.walker762@yahoo.com', '1997-06-05', 'South Africa'),
    ('Timothy', 'Martin', 'Other', 'timothy.martin976@gmail.com', '1992-08-23', 'Finland'),
    ('James', 'Wright', 'Female', 'james.wright647@feeblurner.com', '1952-11-23', 'Turkey'),
    ('Benjamin', 'Omar', 'Female', 'benjamin.omar194@hotmail.com', '2002-06-14', 'Saudi Arabia'),
    ('Ava', 'Hall', 'Female', 'ava.hall47@gmail.com', '1992-08-18', 'France'),
    ('Isabella', 'Roberts', 'Male', 'isabella.roberts108@hotmail.com', '1966-12-04', 'Nigeria'),
    ('Stella', 'Brooks', 'Female', 'stella.brooks811@gmail.com', '1994-03-10', 'Bangladesh'),
    ('Justin', 'Bailey', 'Female', 'justin.bailey899@hotmail.com', '1962-12-02', 'Norway'),
    ('Aaron', 'Johnson', 'Female', 'aaron.johnson187@mail.com', '1951-01-24', 'Philippines'),
    ('Chloe', 'Adams', 'Male', 'chloe.adams50@gmail.com', '1960-05-18', 'United States'),
    ('Andrew', 'Scott', 'Male', 'andrew.scott638@icloud.com', '1956-03-01', 'Portugal'),
    ('Olivia', 'Cox', 'Female', null, '1964-09-18', 'Germany'),
    ('Hazel', 'Ramirez', 'Female', 'hazel.ramirez938@icloud.com', '1999-05-01', 'Germany'),
    ('Jennifer', 'Harris', 'Other', null, '1963-10-21', 'Pakistan'),
    ('Luna', 'Campbell', 'Male', 'luna.campbell983@yahoo.com', '1970-11-27', 'Norway'),
    ('Brandon', 'Thompson', 'Male', 'brandon.thompson259@feeblurner.com', '1993-06-26', 'Ireland'),
    ('Karen', 'Hill', 'Other', 'karen.hill506@outlook.com', '1990-11-09', 'Brazil'),
    ('Emily', 'King', 'Female', 'emily.king501@gmail.com', '1957-01-14', 'New Zealand'),
    ('Carlos', 'Harris', 'Female', 'carlos.harris379@yahoo.com', '1988-11-20', 'Spain'),
    ('Matthew', 'Phillips', 'Male', 'matthew.phillips595@feeblurner.com', '1957-10-21', 'United States'),
    ('Riley', 'Murphy', 'Male', null, '1965-12-14', 'Indonesia'),
    ('Isabella', 'Parker', 'Male', 'isabella.parker514@mail.com', '1972-11-07', 'Turkey'),
    ('Scott', 'Bailey', 'Male', 'scott.bailey983@mail.com', '1994-06-24', 'Poland'),
    ('Hazel', 'Rivera', 'Female', 'hazel.rivera175@yahoo.com', '1969-01-22', 'South Africa'),
    ('Diego', 'Perez', 'Female', 'diego.perez451@hotmail.com', '1950-12-10', 'Colombia'),
    ('Victoria', 'Gonzalez', 'Female', 'victoria.gonzalez95@mail.com', '1994-10-08', 'Denmark'),
    ('Leah', 'Reed', 'Female', 'leah.reed297@feeblurner.com', '1971-01-03', 'Saudi Arabia'),
    ('Stella', 'Khan', 'Male', 'stella.khan278@hotmail.com', '1999-11-16', 'Philippines'),
    ('Victoria', 'Gonzalez', 'Male', 'victoria.gonzalez610@yahoo.com', '1991-09-19', 'South Korea'),
    ('Jason', 'Myers', 'Male', 'jason.myers731@mail.com', '1978-09-07', 'Brazil'),
    ('Nicholas', 'Rodriguez', 'Other', 'nicholas.rodriguez173@outlook.com', '1958-11-22', 'Norway'),
    ('Grace', 'Collins', 'Other', 'grace.collins530@icloud.com', '1979-09-14', 'Turkey'),
    ('Paul', 'Khan', 'Other', 'paul.khan236@feeblurner.com', '1961-05-15', 'Australia'),
    ('Adriana', 'Morgan', 'Male', 'adriana.morgan363@hotmail.com', '1955-02-28', 'South Korea'),
    ('Stephen', 'Ramirez', 'Other', 'stephen.ramirez71@outlook.com', '1969-08-19', 'Philippines'),
    ('Leah', 'Harris', 'Other', 'leah.harris750@hotmail.com', '1973-01-19', 'Turkey'),
    ('Stephen', 'Brown', 'Other', 'stephen.brown840@feeblurner.com', '1995-09-07', 'Nigeria'),
    ('Claire', 'Patel', 'Female', null, '1973-09-12', 'Kenya'),
    ('Claire', 'Nguyen', 'Female', 'claire.nguyen707@mail.com', '1973-02-09', 'India'),
    ('Karen', 'James', 'Other', null, '1967-03-28', 'New Zealand'),
    ('Timothy', 'Lewis', 'Female', 'timothy.lewis261@yahoo.com', '1973-10-19', 'Indonesia'),
    ('Ronald', 'Hassan', 'Male', 'ronald.hassan376@yahoo.com', '1994-02-02', 'Brazil'),
    ('Elizabeth', 'Flores', 'Male', 'elizabeth.flores951@gmail.com', '1998-05-10', 'Japan'),
    ('Scarlett', 'Roberts', 'Other', 'scarlett.roberts115@mail.com', '2003-10-04', 'India'),
    ('Matthew', 'Murphy', 'Male', 'matthew.murphy121@gmail.com', '1950-04-04', 'South Africa'),
    ('Kevin', 'Clark', 'Male', 'kevin.clark978@mail.com', '1965-09-08', 'Argentina'),
    ('Chloe', 'Bailey', 'Male', 'chloe.bailey969@mail.com', '1986-01-06', 'United Kingdom'),
    ('Omar', 'Flores', 'Other', 'omar.flores172@icloud.com', '1993-10-26', 'Colombia'),
    ('Isabella', 'Cooper', 'Male', 'isabella.cooper612@feeblurner.com', '1997-04-06', 'Brazil'),
    ('Rebecca', 'Turner', 'Other', 'rebecca.turner289@hotmail.com', '1982-05-12', 'Argentina'),
    ('William', 'Mitchell', 'Female', 'william.mitchell167@gmail.com', '1989-11-05', 'India'),
    ('Joshua', 'Nelson', 'Other', 'joshua.nelson206@gmail.com', '1992-09-24', 'Bangladesh'),
    ('Mark', 'Parker', 'Female', null, '1987-12-14', 'South Africa'),
    ('Ella', 'Wilson', 'Other', null, '1997-10-16', 'Brazil'),
    ('Christopher', 'Rodriguez', 'Other', 'christopher.rodriguez146@icloud.com', '1998-01-03', 'China'),
    ('Lily', 'Harris', 'Male', 'lily.harris748@mail.com', '1993-12-16', 'Finland'),
    ('Susan', 'Reyes', 'Other', 'susan.reyes597@icloud.com', '1953-03-10', 'Sweden'),
    ('Stephen', 'Myers', 'Female', 'stephen.myers483@mail.com', '1975-08-24', 'Japan'),
    ('Victoria', 'Ali', 'Other', 'victoria.ali492@mail.com', '1961-03-26', 'India'),
    ('Elizabeth', 'Cooper', 'Male', 'elizabeth.cooper398@mail.com', '1953-04-19', 'Kenya'),
    ('Harper', 'Campbell', 'Female', 'harper.campbell796@mail.com', '1960-05-10', 'India'),
    ('Harper', 'Hughes', 'Male', 'harper.hughes145@feeblurner.com', '1955-05-14', 'Germany'),
    ('Jose', 'Taylor', 'Other', 'jose.taylor314@hotmail.com', '2004-08-06', 'United Kingdom'),
    ('Karen', 'Jones', 'Male', 'karen.jones873@outlook.com', '1955-09-16', 'Netherlands'),
    ('Daniel', 'Hughes', 'Other', 'daniel.hughes192@feeblurner.com', '1991-10-27', 'Argentina'),
    ('Paul', 'Wright', 'Female', 'paul.wright34@hotmail.com', '1980-03-05', 'Spain'),
    ('Joshua', 'Bennett', 'Other', 'joshua.bennett849@gmail.com', '1998-09-16', 'Denmark'),
    ('Jerry', 'Hall', 'Other', null, '1971-05-24', 'Brazil'),
    ('Ava', 'Davis', 'Other', 'ava.davis17@hotmail.com', '1954-12-19', 'Malaysia'),
    ('Emma', 'Patel', 'Other', 'emma.patel119@gmail.com', '1971-11-23', 'Malaysia'),
    ('John', 'Nelson', 'Male', 'john.nelson234@mail.com', '1983-11-24', 'Italy'),
    ('Larry', 'Colmore', 'Female', 'larry.colmore555@icloud.com', '1984-08-15', 'Italy'),
    ('Omar', 'Mitchell', 'Other', 'omar.mitchell756@hotmail.com', '1966-03-10', 'China'),
    ('Brian', 'Baker', 'Other', 'brian.baker609@mail.com', '1985-02-15', 'Kenya'),
    ('Harper', 'Williams', 'Other', 'harper.williams364@hotmail.com', '1962-04-24', 'Bangladesh'),
    ('Lucas', 'Khan', 'Female', 'lucas.khan618@mail.com', '1990-08-22', 'Bangladesh'),
    ('Joshua', 'Singh', 'Other', 'joshua.singh632@mail.com', '1993-08-10', 'China'),
    ('Scarlett', 'Nguyen', 'Other', 'scarlett.nguyen986@outlook.com', '1987-04-12', 'Pakistan'),
    ('Jack', 'Bennett', 'Other', 'jack.bennett599@feeblurner.com', '1984-10-18', 'New Zealand'),
    ('Linda', 'Allen', 'Female', 'linda.allen866@gmail.com', '1977-06-22', 'China'),
    ('Jose', 'Anderson', 'Male', 'jose.anderson746@gmail.com', '1984-07-13', 'Spain'),
    ('Eleanor', 'Sterling', 'Other', null, '1962-08-20', 'South Korea'),
    ('Natalie', 'Taylor', 'Other', 'natalie.taylor981@feeblurner.com', '1962-10-16', 'UAE'),
    ('Natalie', 'Adams', 'Female', null, '1967-11-13', 'Norway'),
    ('Isabella', 'Hassan', 'Other', 'isabella.hassan391@mail.com', '2004-01-02', 'Mexico'),
    ('Grace', 'Harris', 'Other', 'grace.harris739@hotmail.com', '1993-04-04', 'Ireland'),
    ('Harper', 'King', 'Other', null, '2001-04-10', 'Vietnam'),
    ('David', 'Evans', 'Female', 'david.evans859@mail.com', '1981-12-13', 'Nigeria'),
    ('Edward', 'Walker', 'Female', null, '1962-12-27', 'Kenya'),
    ('Leah', 'Clark', 'Other', 'leah.clark811@gmail.com', '1954-02-27', 'UAE'),
    ('Alexander', 'Watson', 'Female', null, '1976-08-19', 'Malaysia'),
    ('Miguel', 'Brooks', 'Female', 'miguel.brooks85@feeblurner.com', '1979-03-20', 'Nigeria'),
    ('Jessica', 'Ali', 'Male', 'jessica.ali796@gmail.com', '1967-08-17', 'Argentina'),
    ('Claire', 'James', 'Female', 'claire.james793@gmail.com', '1951-12-08', 'Bangladesh'),
    ('Patricia', 'Anderson', 'Female', 'patricia.anderson410@hotmail.com', '1996-09-25', 'France'),
    ('Larry', 'Hill', 'Female', 'larry.hill51@yahoo.com', '1970-02-03', 'Portugal'),
    ('Victoria', 'Parker', 'Male', 'victoria.parker302@hotmail.com', '1993-01-05', 'Netherlands'),
    ('Christopher', 'Edwards', 'Male', null, '1966-12-03', 'Japan'),
    ('Benjamin', 'Walker', 'Female', null, '1957-06-13', 'Saudi Arabia'),
    ('Hazel', 'Ward', 'Other', null, '1979-12-19', 'Turkey'),
    ('Samuel', 'Gonzalez', 'Other', 'samuel.gonzalez77@gmail.com', '1983-04-25', 'Colombia'),
    ('Donald', 'Taylor', 'Other', 'donald.taylor221@outlook.com', '1961-06-20', 'Italy'),
    ('Hannah', 'Nguyen', 'Male', null, '1975-02-03', 'Ireland'),
    ('Jason', 'Brown', 'Male', 'jason.brown460@icloud.com', '1963-07-27', 'Turkey'),
    ('Nicholas', 'Phillips', 'Other', 'nicholas.phillips170@mail.com', '1973-07-04', 'Germany'),
    ('Sofia', 'Shah', 'Male', null, '1971-05-14', 'Nigeria'),
    ('Madison', 'Young', 'Female', 'madison.young230@feeblurner.com', '1993-05-20', 'Colombia'),
    ('Lucas', 'Lewis', 'Female', 'lucas.lewis957@hotmail.com', '1969-03-07', 'Vietnam'),
    ('Jose', 'Martin', 'Male', 'jose.martin878@mail.com', '1995-09-27', 'Finland'),
    ('Raymond', 'Johnson', 'Male', 'raymond.johnson535@icloud.com', '1952-11-18', 'Indonesia'),
    ('Benjamin', 'Patel', 'Male', null, '1972-10-17', 'Bangladesh'),
    ('Stella', 'Thomas', 'Male', 'stella.thomas425@mail.com', '1953-08-02', 'South Africa'),
    ('Lily', 'Edwards', 'Other', 'lily.edwards334@yahoo.com', '1997-04-03', 'Colombia'),
    ('Evelyn', 'Lee', 'Female', 'evelyn.lee613@icloud.com', '1970-08-08', 'Sweden'),
    ('Audrey', 'Johnson', 'Male', 'audrey.johnson222@gmail.com', '1955-11-17', 'Netherlands'),
    ('Grace', 'Smith', 'Male', 'grace.smith187@icloud.com', '1978-11-16', 'New Zealand'),
    ('Eric', 'Mitchell', 'Male', null, '1966-10-21', 'Malaysia'),
    ('Leah', 'Walker', 'Male', 'leah.walker63@feeblurner.com', '1956-11-19', 'Saudi Arabia'),
    ('Dennis', 'Peterson', 'Other', 'dennis.peterson90@outlook.com', '1992-07-15', 'Nigeria'),
    ('Charles', 'Rodriguez', 'Other', 'charles.rodriguez657@mail.com', '1977-04-28', 'Japan'),
    ('Ella', 'Rodriguez', 'Male', null, '1995-11-15', 'Kenya'),
    ('Jacob', 'Robinson', 'Male', 'jacob.robinson569@hotmail.com', '1993-07-17', 'South Africa'),
    ('Michael', 'Watson', 'Female', 'michael.watson379@outlook.com', '1982-06-21', 'Chile'),
    ('Adriana', 'Martin', 'Female', 'adriana.martin503@hotmail.com', '1967-03-08', 'Turkey'),
    ('Hazel', 'Omar', 'Female', 'hazel.omar602@feeblurner.com', '1968-04-14', 'Portugal'),
    ('Alexander', 'Parker', 'Other', 'alexander.parker165@gmail.com', '1982-10-26', 'Turkey'),
    ('Mark', 'Diaz', 'Female', 'mark.diaz493@outlook.com', '1980-05-11', 'Nigeria'),
    ('Jason', 'Cox', 'Female', 'jason.cox398@feeblurner.com', '1983-09-25', 'Finland'),
    ('Elizabeth', 'James', 'Other', 'elizabeth.james209@gmail.com', '1952-07-26', 'UAE'),
    ('Charlotte', 'Hughes', 'Male', 'charlotte.hughes702@outlook.com', '1951-12-11', 'South Korea'),
    ('Joshua', 'Matuschek', 'Other', 'joshua.matuschek302@mail.com', '1955-11-02', 'Malaysia'),
    ('Chloe', 'Rodriguez', 'Other', 'chloe.rodriguez164@gmail.com', '1969-04-02', 'Germany'),
    ('Addison', 'Peterson', 'Male', 'addison.peterson422@feeblurner.com', '1973-08-06', 'Saudi Arabia'),
    ('Patricia', 'Turner', 'Female', 'patricia.turner179@mail.com', '2004-08-10', 'Chile'),
    ('Omar', 'Reed', 'Male', 'omar.reed812@gmail.com', '1987-08-04', 'Bangladesh'),
    ('Lucas', 'Ward', 'Male', 'lucas.ward161@yahoo.com', '1977-07-06', 'United Kingdom'),
    ('Jeffrey', 'Hill', 'Female', 'jeffrey.hill772@outlook.com', '1991-01-25', 'Nigeria'),
    ('Victoria', 'Cooper', 'Other', 'victoria.cooper120@outlook.com', '1981-09-08', 'Turkey'),
    ('Steven', 'Turner', 'Female', 'steven.turner411@yahoo.com', '1983-10-08', 'Ireland'),
    ('Stephen', 'Martin', 'Other', 'stephen.martin971@gmail.com', '1997-07-05', 'India'),
    ('Stephen', 'Rodriguez', 'Male', 'stephen.rodriguez218@hotmail.com', '1972-02-27', 'Denmark'),
    ('Gregory', 'Bailey', 'Female', 'gregory.bailey884@yahoo.com', '1966-02-03', 'Pakistan'),
    ('Charles', 'Wright', 'Male', 'charles.wright598@hotmail.com', '1985-06-13', 'United States'),
    ('Samuel', 'Robinson', 'Female', 'samuel.robinson80@icloud.com', '1959-06-04', 'United Kingdom'),
    ('Madison', 'Morgan', 'Male', 'madison.morgan523@hotmail.com', '1959-07-28', 'Denmark'),
    ('Robert', 'Cox', 'Male', 'robert.cox686@feeblurner.com', '1993-05-14', 'Bangladesh'),
    ('Harper', 'Morgan', 'Female', 'harper.morgan806@outlook.com', '1980-07-15', 'Ireland'),
    ('Stephen', 'Roberts', 'Other', null, '1950-03-25', 'Saudi Arabia'),
    ('Lucas', 'Smith', 'Male', null, '2002-07-19', 'Poland'),
    ('Justin', 'Davis', 'Other', null, '1959-02-07', 'Spain'),
    ('Patrick', 'Morgan', 'Male', 'patrick.morgan622@feeblurner.com', '1986-10-24', 'Pakistan'),
    ('Gregory', 'Nguyen', 'Male', 'gregory.nguyen263@yahoo.com', '1951-12-25', 'Sweden'),
    ('George', 'James', 'Male', 'george.james713@mail.com', '1971-11-23', 'Turkey'),
    ('Carlos', 'Price', 'Other', 'carlos.price904@outlook.com', '1994-05-20', 'Egypt'),
    ('Matthew', 'Roberts', 'Female', 'matthew.roberts666@icloud.com', '2000-04-25', 'Brazil'),
    ('Ava', 'Bell', 'Other', 'ava.bell620@hotmail.com', '1985-09-18', 'Japan'),
    ('Miguel', 'Davis', 'Female', 'miguel.davis65@icloud.com', '1951-06-19', 'United States'),
    ('Brandon', 'Singh', 'Other', 'brandon.singh674@hotmail.com', '2001-08-21', 'Indonesia'),
    ('Claire', 'Diaz', 'Other', 'claire.diaz258@icloud.com', '1986-06-04', 'Turkey'),
    ('Tyler', 'Morgan', 'Other', 'tyler.morgan520@icloud.com', '1973-07-10', 'China'),
    ('Mia', 'Morgan', 'Other', 'mia.morgan273@outlook.com', '1960-01-21', 'Poland'),
    ('Eric', 'Jones', 'Other', 'eric.jones650@yahoo.com', '1959-04-20', 'New Zealand'),
    ('Charles', 'Carter', 'Other', 'charles.carter312@icloud.com', '1970-04-04', 'Mexico'),
    ('Jose', 'White', 'Female', 'jose.white723@outlook.com', '1973-08-19', 'Saudi Arabia'),
    ('Jerry', 'Campbell', 'Other', 'jerry.campbell163@icloud.com', '1981-11-22', 'Sweden'),
    ('Joseph', 'Wilson', 'Female', 'joseph.wilson415@feeblurner.com', '1988-09-13', 'Saudi Arabia'),
    ('Stephen', 'Thomas', 'Other', 'stephen.thomas880@hotmail.com', '1960-02-04', 'Saudi Arabia'),
    ('Sofia', 'Phillips', 'Other', 'sofia.phillips343@hotmail.com', '1960-05-06', 'South Africa'),
    ('Harper', 'Sanchez', 'Other', null, '1956-11-11', 'Netherlands'),
    ('Richard', 'King', 'Female', null, '1987-05-08', 'Vietnam'),
    ('Patricia', 'Thompson', 'Female', 'patricia.thompson87@icloud.com', '1973-12-04', 'Mexico'),
    ('Jeffrey', 'Bailey', 'Female', 'jeffrey.bailey251@mail.com', '1977-04-15', 'Netherlands'),
    ('Scarlett', 'Hernandez', 'Female', null, '1999-01-02', 'Mexico'),
    ('Christopher', 'Edwards', 'Female', 'christopher.edwards515@icloud.com', '2004-07-13', 'Bangladesh'),
    ('Alexander', 'Reed', 'Male', 'alexander.reed138@gmail.com', '1995-08-01', 'Ireland'),
    ('Aria', 'Nelson', 'Other', 'aria.nelson471@mail.com', '1985-05-21', 'Finland'),
    ('John', 'Wood', 'Male', 'john.wood582@mail.com', '1973-03-19', 'Indonesia'),
    ('Timothy', 'Gonzalez', 'Other', 'timothy.gonzalez197@hotmail.com', '1966-03-13', 'Ireland'),
    ('Carlos', 'Rivera', 'Male', 'carlos.rivera761@gmail.com', '1954-03-12', 'South Korea'),
    ('Michael', 'Ahmed', 'Male', null, '1958-06-18', 'Bangladesh'),
    ('Daniel', 'Davis', 'Female', 'daniel.davis664@yahoo.com', '1989-06-28', 'South Korea'),
    ('Jason', 'Murphy', 'Other', 'jason.murphy785@yahoo.com', '1985-08-03', 'Brazil'),
    ('Samuel', 'Young', 'Female', 'samuel.young397@gmail.com', '1979-03-11', 'Denmark'),
    ('Hazel', 'Jackson', 'Other', 'hazel.jackson298@yahoo.com', '1993-08-17', 'Australia'),
    ('Charlotte', 'Green', 'Female', 'charlotte.green258@gmail.com', '2000-01-25', 'Brazil'),
    ('Layla', 'Patel', 'Female', 'layla.patel555@icloud.com', '1965-07-20', 'Portugal'),
    ('Emma', 'Myers', 'Other', 'emma.myers252@mail.com', '1994-12-04', 'South Africa'),
    ('James', 'Sanchez', 'Female', 'james.sanchez687@hotmail.com', '1969-06-27', 'Kenya'),
    ('Claire', 'Evans', 'Male', 'claire.evans880@hotmail.com', '1953-03-25', 'Finland'),
    ('Aurora', 'Mitchell', 'Other', 'aurora.mitchell760@gmail.com', '1956-07-25', 'Norway'),
    ('Layla', 'Bailey', 'Female', 'layla.bailey7@gmail.com', '1996-09-11', 'China'),
    ('Chloe', 'Thomas', 'Male', 'chloe.thomas894@hotmail.com', '1990-07-15', 'Ireland'),
    ('Camila', 'Ramirez', 'Male', 'camila.ramirez292@gmail.com', '1953-01-14', 'Denmark'),
    ('Susan', 'Torres', 'Female', 'susan.torres526@hotmail.com', '1994-03-21', 'Finland'),
    ('Ella', 'Sanchez', 'Male', 'ella.sanchez773@feeblurner.com', '1977-01-24', 'Sweden'),
    ('Ryan', 'Hill', 'Other', 'ryan.hill553@gmail.com', '1982-01-16', 'Italy'),
    ('Andrew', 'Murphy', 'Male', 'andrew.murphy227@feeblurner.com', '1988-12-25', 'Ireland'),
    ('Joseph', 'Turner', 'Female', null, '1979-05-12', 'Italy'),
    ('Nicholas', 'Brooks', 'Female', null, '1993-04-25', 'United Kingdom'),
    ('Charlotte', 'Colmore', 'Male', 'charlotte.colmore983@gmail.com', '1969-03-22', 'Egypt'),
    ('Sarah', 'Richardson', 'Female', 'sarah.richardson504@yahoo.com', '1988-09-17', 'Vietnam'),
    ('Natalie', 'Rodriguez', 'Other', 'natalie.rodriguez149@yahoo.com', '1991-01-12', 'Japan'),
    ('Andrew', 'Ward', 'Male', 'andrew.ward429@mail.com', '2001-12-09', 'Sweden'),
    ('Scott', 'Scott', 'Female', 'scott.scott419@yahoo.com', '1968-09-05', 'Colombia'),
    ('Paul', 'Harris', 'Other', 'paul.harris421@icloud.com', '1990-10-01', 'Germany'),
    ('Adriana', 'Reyes', 'Male', 'adriana.reyes288@feeblurner.com', '1990-11-01', 'United Kingdom'),
    ('Scarlett', 'Hughes', 'Male', null, '1951-11-01', 'South Korea'),
    ('Samuel', 'Allen', 'Female', 'samuel.allen708@hotmail.com', '1980-05-11', 'United Kingdom'),
    ('Joseph', 'Jones', 'Male', null, '2005-04-28', 'Spain'),
    ('Jose', 'Carter', 'Other', 'jose.carter963@icloud.com', '2002-08-26', 'Ireland'),
    ('Paul', 'Singh', 'Other', 'paul.singh763@feeblurner.com', '1953-05-05', 'Pakistan'),
    ('Abigail', 'Wright', 'Male', 'abigail.wright549@icloud.com', '1953-11-04', 'Vietnam'),
    ('Paul', 'Sterling', 'Male', 'paul.sterling768@yahoo.com', '1982-06-24', 'Italy'),
    ('Joshua', 'Ali', 'Other', 'joshua.ali74@hotmail.com', '1971-08-05', 'Vietnam'),
    ('Claire', 'Robinson', 'Male', 'claire.robinson227@mail.com', '1986-02-03', 'Spain'),
    ('Thomas', 'Rivera', 'Female', 'thomas.rivera902@feeblurner.com', '2003-06-20', 'South Korea'),
    ('Kevin', 'Lopez', 'Male', null, '1953-02-16', 'Thailand'),
    ('Joshua', 'Gray', 'Male', 'joshua.gray647@feeblurner.com', '1960-08-27', 'Nigeria'),
    ('George', 'Jackson', 'Male', 'george.jackson133@icloud.com', '1984-05-27', 'China'),
    ('Jack', 'Rogers', 'Other', 'jack.rogers416@hotmail.com', '1991-04-05', 'United States'),
    ('Jerry', 'Baker', 'Other', null, '1996-08-25', 'Turkey'),
    ('Savannah', 'Kumar', 'Other', 'savannah.kumar750@hotmail.com', '1975-05-13', 'India'),
    ('Harper', 'Watson', 'Male', 'harper.watson967@gmail.com', '2001-06-12', 'Australia'),
    ('Zoe', 'Hill', 'Male', 'zoe.hill880@feeblurner.com', '2003-01-24', 'Norway'),
    ('Miguel', 'Nelson', 'Male', 'miguel.nelson317@gmail.com', '1971-11-20', 'Thailand'),
    ('Patricia', 'Clark', 'Male', 'patricia.clark755@mail.com', '2005-06-23', 'Mexico'),
    ('Violet', 'Taylor', 'Female', 'violet.taylor702@gmail.com', '1987-01-23', 'Philippines'),
    ('Abigail', 'Rodriguez', 'Female', 'abigail.rodriguez446@outlook.com', '1953-05-02', 'Colombia'),
    ('Steven', 'Jackson', 'Other', 'steven.jackson369@feeblurner.com', '1991-11-22', 'Denmark'),
    ('Carlos', 'Hernandez', 'Other', null, '1959-12-11', 'Germany'),
    ('Violet', 'Collins', 'Female', 'violet.collins509@icloud.com', '1950-03-22', 'United States'),
    ('Alexander', 'Price', 'Female', null, '1954-01-17', 'France'),
    ('Joshua', 'Sterling', 'Male', 'joshua.sterling585@icloud.com', '2000-04-24', 'Nigeria'),
    ('Amelia', 'King', 'Male', 'amelia.king851@icloud.com', '1950-11-25', 'Germany'),
    ('Mia', 'Rogers', 'Male', 'mia.rogers733@gmail.com', '1991-10-21', 'South Africa'),
    ('Timothy', 'Bailey', 'Female', null, '1994-07-02', 'Nigeria'),
    ('Alexander', 'Singh', 'Female', 'alexander.singh595@yahoo.com', '2002-10-22', 'Sweden'),
    ('Stella', 'Stewart', 'Other', 'stella.stewart936@outlook.com', '1956-10-10', 'Germany'),
    ('Leah', 'Phillips', 'Other', 'leah.phillips478@feeblurner.com', '1992-02-01', 'Malaysia'),
    ('Brian', 'Collins', 'Other', 'brian.collins855@yahoo.com', '1999-11-20', 'New Zealand'),
    ('Nora', 'Hughes', 'Male', 'nora.hughes699@feeblurner.com', '1952-05-07', 'France'),
    ('Isabella', 'Garcia', 'Other', 'isabella.garcia668@gmail.com', '1998-11-21', 'Malaysia'),
    ('Omar', 'Bennett', 'Male', 'omar.bennett286@icloud.com', '1953-04-06', 'India'),
    ('Audrey', 'Watson', 'Other', 'audrey.watson672@yahoo.com', '1994-09-23', 'Sweden'),
    ('Claire', 'Colmore', 'Other', 'claire.colmore469@icloud.com', '1990-02-17', 'UAE'),
    ('Evelyn', 'Ramirez', 'Male', 'evelyn.ramirez707@yahoo.com', '1998-05-04', 'Japan'),
    ('Benjamin', 'Ibrahim', 'Other', 'benjamin.ibrahim928@hotmail.com', '1959-01-22', 'Thailand'),
    ('Daniel', 'Murphy', 'Other', 'daniel.murphy231@hotmail.com', '1977-02-13', 'Turkey'),
    ('Justin', 'Campbell', 'Male', 'justin.campbell468@icloud.com', '1950-06-04', 'Ireland'),
    ('James', 'Morgan', 'Other', 'james.morgan678@yahoo.com', '1973-05-14', 'UAE'),
    ('Violet', 'Shah', 'Female', 'violet.shah438@feeblurner.com', '1955-06-21', 'Indonesia'),
    ('Natalie', 'Walker', 'Other', 'natalie.walker616@feeblurner.com', '1987-12-20', 'Nigeria'),
    ('Joshua', 'Smith', 'Male', 'joshua.smith444@mail.com', '1958-07-10', 'Brazil'),
    ('James', 'Harris', 'Other', 'james.harris190@hotmail.com', '1959-11-25', 'Egypt'),
    ('Benjamin', 'Martin', 'Other', 'benjamin.martin194@feeblurner.com', '1982-01-26', 'Spain'),
    ('Ryan', 'Matuschek', 'Male', 'ryan.matuschek351@feeblurner.com', '1974-01-10', 'South Africa'),
    ('Sarah', 'Bell', 'Male', 'sarah.bell516@mail.com', '1980-08-03', 'India'),
    ('Kevin', 'Patel', 'Male', null, '1957-05-04', 'Australia'),
    ('Donald', 'Omar', 'Male', 'donald.omar981@icloud.com', '1952-03-20', 'Germany'),
    ('Stella', 'Johnson', 'Other', 'stella.johnson784@outlook.com', '1979-12-09', 'Kenya'),
    ('Stella', 'Ali', 'Male', 'stella.ali372@outlook.com', '1970-08-01', 'Pakistan'),
    ('Mark', 'Colmore', 'Other', 'mark.colmore595@outlook.com', '1976-05-25', 'South Africa'),
    ('Emma', 'Williams', 'Other', 'emma.williams102@icloud.com', '1970-05-28', 'Spain'),
    ('Jerry', 'Jackson', 'Female', null, '1986-05-02', 'United Kingdom'),
    ('Benjamin', 'Cruz', 'Female', 'benjamin.cruz734@outlook.com', '1963-04-15', 'Poland'),
    ('Robert', 'Gonzalez', 'Other', null, '1998-12-23', 'Bangladesh'),
    ('Scarlett', 'Thompson', 'Other', null, '2000-02-20', 'Indonesia'),
    ('George', 'Robinson', 'Female', 'george.robinson632@hotmail.com', '1974-10-24', 'Argentina'),
    ('Audrey', 'Omar', 'Female', 'audrey.omar240@icloud.com', '1965-12-28', 'Spain'),
    ('Aurora', 'Kelly', 'Female', 'aurora.kelly127@feeblurner.com', '1986-12-18', 'Germany'),
    ('Emily', 'Gonzalez', 'Other', 'emily.gonzalez536@feeblurner.com', '1959-08-17', 'Finland'),
    ('Ava', 'Morgan', 'Other', null, '1996-03-04', 'Colombia'),
    ('Isabella', 'Reed', 'Male', 'isabella.reed80@yahoo.com', '1987-09-27', 'Italy'),
    ('Kevin', 'Smith', 'Male', 'kevin.smith663@feeblurner.com', '1991-01-25', 'Mexico'),
    ('Jose', 'Reyes', 'Other', 'jose.reyes62@gmail.com', '1959-03-22', 'United Kingdom'),
    ('Grace', 'Thomas', 'Female', 'grace.thomas32@gmail.com', '1969-10-01', 'Bangladesh'),
    ('Carlos', 'Bailey', 'Male', 'carlos.bailey187@feeblurner.com', '1985-02-07', 'Finland'),
    ('Riley', 'Reyes', 'Female', 'riley.reyes258@mail.com', '1985-01-28', 'Denmark'),
    ('Matthew', 'Collins', 'Other', 'matthew.collins576@outlook.com', '1978-07-13', 'Australia'),
    ('Patricia', 'Cox', 'Male', 'patricia.cox341@mail.com', '1966-12-14', 'South Korea'),
    ('Michael', 'Bennett', 'Female', 'michael.bennett40@hotmail.com', '1994-03-25', 'Egypt'),
    ('Lucas', 'Cruz', 'Male', 'lucas.cruz814@outlook.com', '1972-02-15', 'Nigeria'),
    ('Omar', 'Matuschek', 'Other', 'omar.matuschek22@feeblurner.com', '1990-12-03', 'Norway'),
    ('Anthony', 'Martinez', 'Male', null, '1962-04-22', 'Turkey'),
    ('Jason', 'Davis', 'Male', 'jason.davis189@mail.com', '1971-03-24', 'Philippines'),
    ('Claire', 'Ramirez', 'Male', null, '1951-03-20', 'Philippines'),
    ('Evelyn', 'Young', 'Other', null, '1952-05-10', 'Argentina'),
    ('Grace', 'Robinson', 'Other', 'grace.robinson174@hotmail.com', '1951-08-17', 'Finland'),
    ('Steven', 'Smith', 'Female', 'steven.smith812@mail.com', '1958-01-01', 'Pakistan'),
    ('Justin', 'Sterling', 'Male', 'justin.sterling760@outlook.com', '2001-08-12', 'France'),
    ('Richard', 'Ramirez', 'Other', 'richard.ramirez537@mail.com', '1963-09-18', 'Brazil'),
    ('Natalie', 'Shah', 'Other', 'natalie.shah898@yahoo.com', '1966-03-06', 'Poland'),
    ('Elizabeth', 'Jackson', 'Male', 'elizabeth.jackson331@mail.com', '1989-11-25', 'Chile'),
    ('Harper', 'Garcia', 'Male', 'harper.garcia115@hotmail.com', '1971-09-18', 'Bangladesh'),
    ('Timothy', 'Hill', 'Male', 'timothy.hill69@outlook.com', '1950-04-26', 'Norway'),
    ('Sarah', 'Davis', 'Male', 'sarah.davis860@outlook.com', '1982-03-12', 'Sweden'),
    ('Ryan', 'King', 'Other', 'ryan.king110@hotmail.com', '1985-03-28', 'Egypt'),
    ('Layla', 'Miller', 'Male', 'layla.miller470@outlook.com', '1988-02-01', 'Japan'),
    ('Riley', 'Baker', 'Female', 'riley.baker2@feeblurner.com', '1966-02-23', 'France'),
    ('Savannah', 'Harris', 'Female', 'savannah.harris706@feeblurner.com', '1978-02-13', 'Saudi Arabia'),
    ('Jason', 'Kelly', 'Male', 'jason.kelly690@mail.com', '2005-07-14', 'Portugal'),
    ('Jose', 'Young', 'Male', 'jose.young341@yahoo.com', '1968-12-06', 'Egypt'),
    ('Edward', 'Wood', 'Other', 'edward.wood585@feeblurner.com', '1983-01-02', 'United Kingdom'),
    ('Adriana', 'Jones', 'Male', 'adriana.jones58@feeblurner.com', '2002-06-14', 'Poland'),
    ('Anthony', 'Miller', 'Female', 'anthony.miller536@outlook.com', '1992-02-13', 'Denmark'),
    ('Karen', 'Shah', 'Female', 'karen.shah397@icloud.com', '2003-09-10', 'United States'),
    ('Aaron', 'Parker', 'Other', 'aaron.parker942@yahoo.com', '1989-12-04', 'France'),
    ('Hannah', 'Stewart', 'Male', 'hannah.stewart412@icloud.com', '1972-05-01', 'Indonesia'),
    ('Emily', 'Singh', 'Other', 'emily.singh379@hotmail.com', '1951-10-28', 'Japan'),
    ('Rebecca', 'Gray', 'Female', 'rebecca.gray354@outlook.com', '1980-04-05', 'Chile'),
    ('Penelope', 'Davis', 'Other', 'penelope.davis974@feeblurner.com', '1995-04-11', 'Indonesia'),
    ('Adriana', 'Martinez', 'Other', null, '2004-01-26', 'Indonesia'),
    ('Aaron', 'Hill', 'Male', 'aaron.hill719@hotmail.com', '1973-01-20', 'Canada'),
    ('Robert', 'Cook', 'Other', 'robert.cook721@yahoo.com', '1987-02-19', 'Brazil'),
    ('Brian', 'Mitchell', 'Male', 'brian.mitchell21@gmail.com', '1996-03-26', 'Vietnam'),
    ('Fernanda', 'Kelly', 'Other', 'fernanda.kelly356@hotmail.com', '1996-09-01', 'Australia'),
    ('Harper', 'Peterson', 'Male', null, '1962-07-04', 'India'),
    ('Luna', 'Miller', 'Other', null, '1963-08-24', 'South Korea'),
    ('Sophia', 'Phillips', 'Other', null, '1994-03-02', 'Finland'),
    ('Leah', 'Nguyen', 'Male', 'leah.nguyen618@feeblurner.com', '1997-05-04', 'Ireland'),
    ('Susan', 'Nguyen', 'Other', 'susan.nguyen342@yahoo.com', '1999-12-07', 'Thailand'),
    ('Samuel', 'Walker', 'Female', 'samuel.walker615@feeblurner.com', '2002-10-26', 'United States'),
    ('James', 'Gonzalez', 'Other', 'james.gonzalez556@mail.com', '1982-03-06', 'UAE'),
    ('Isabella', 'Mitchell', 'Other', 'isabella.mitchell169@yahoo.com', '1972-10-19', 'Netherlands'),
    ('Hazel', 'Perez', 'Other', null, '1968-01-20', 'UAE'),
    ('David', 'Hill', 'Male', 'david.hill314@gmail.com', '1970-02-02', 'Bangladesh'),
    ('Donald', 'Watson', 'Female', 'donald.watson437@icloud.com', '1963-06-04', 'South Africa'),
    ('Violet', 'Harris', 'Other', 'violet.harris915@icloud.com', '1958-12-19', 'United Kingdom'),
    ('Benjamin', 'Myers', 'Other', null, '1975-05-19', 'Indonesia'),
    ('Matthew', 'Stewart', 'Other', 'matthew.stewart446@hotmail.com', '1995-12-19', 'Mexico'),
    ('Steven', 'Davis', 'Male', null, '1965-05-09', 'China'),
    ('Jeffrey', 'Edwards', 'Female', 'jeffrey.edwards800@mail.com', '1970-07-21', 'Ireland'),
    ('Charles', 'Rogers', 'Female', null, '1981-05-09', 'South Africa'),
    ('Susan', 'Beardon', 'Female', null, '1982-10-11', 'New Zealand'),
    ('Brian', 'Shah', 'Female', null, '1965-02-06', 'India'),
    ('Camila', 'Gray', 'Male', 'camila.gray511@feeblurner.com', '1984-12-23', 'New Zealand'),
    ('Karen', 'Kumar', 'Other', 'karen.kumar613@mail.com', '1983-06-11', 'Italy'),
    ('Dennis', 'Lee', 'Other', 'dennis.lee318@mail.com', '1991-01-21', 'Spain'),
    ('Susan', 'Gomez', 'Female', 'susan.gomez475@hotmail.com', '1967-09-17', 'Kenya'),
    ('Anthony', 'Torres', 'Other', 'anthony.torres521@hotmail.com', '1957-06-13', 'Sweden'),
    ('Tyler', 'Wright', 'Male', 'tyler.wright181@icloud.com', '1987-01-12', 'Italy'),
    ('Claire', 'Brooks', 'Male', 'claire.brooks310@mail.com', '1987-02-28', 'United Kingdom'),
    ('Claire', 'Clark', 'Other', 'claire.clark229@feeblurner.com', '1994-01-11', 'Thailand'),
    ('Donald', 'Sanchez', 'Female', 'donald.sanchez319@feeblurner.com', '1979-06-15', 'Finland'),
    ('James', 'Diaz', 'Other', 'james.diaz851@hotmail.com', '1952-06-15', 'Australia'),
    ('Olivia', 'Lopez', 'Other', 'olivia.lopez219@yahoo.com', '1994-08-27', 'Ireland'),
    ('Hannah', 'Shah', 'Other', 'hannah.shah99@icloud.com', '1985-12-12', 'New Zealand'),
    ('Ryan', 'Martin', 'Other', 'ryan.martin124@yahoo.com', '1982-03-28', 'Malaysia'),
    ('Zoe', 'Campbell', 'Male', 'zoe.campbell404@feeblurner.com', '1977-05-17', 'Spain'),
    ('Joseph', 'Nguyen', 'Other', null, '1980-08-13', 'Mexico'),
    ('Isabella', 'Robinson', 'Male', 'isabella.robinson230@outlook.com', '1982-01-01', 'Spain'),
    ('Steven', 'Ramirez', 'Other', null, '1953-09-27', 'Canada'),
    ('Luna', 'Miller', 'Other', 'luna.miller888@feeblurner.com', '1961-05-28', 'Turkey'),
    ('Jose', 'Rogers', 'Male', 'jose.rogers929@icloud.com', '1972-09-10', 'Ireland'),
    ('William', 'Torres', 'Male', 'william.torres570@feeblurner.com', '1983-08-10', 'France'),
    ('Natalie', 'Bell', 'Other', null, '1976-05-27', 'Egypt'),
    ('Sofia', 'Rodriguez', 'Female', 'sofia.rodriguez48@outlook.com', '1990-11-04', 'Canada'),
    ('Patrick', 'Sanchez', 'Male', 'patrick.sanchez623@feeblurner.com', '1959-02-25', 'Turkey'),
    ('Leah', 'Howard', 'Other', null, '1976-02-01', 'Malaysia'),
    ('Raymond', 'Morgan', 'Male', 'raymond.morgan152@outlook.com', '1982-01-07', 'Norway'),
    ('Eleanor', 'Evans', 'Other', 'eleanor.evans843@hotmail.com', '1966-03-07', 'Italy'),
    ('Layla', 'Garcia', 'Male', 'layla.garcia763@icloud.com', '1992-01-11', 'South Korea'),
    ('Jose', 'Jones', 'Female', 'jose.jones858@feeblurner.com', '2002-02-08', 'Finland'),
    ('Christopher', 'Lopez', 'Other', 'christopher.lopez852@feeblurner.com', '1967-03-20', 'United States'),
    ('Stephen', 'Parker', 'Female', 'stephen.parker186@outlook.com', '1969-07-03', 'Malaysia'),
    ('Jerry', 'Martinez', 'Other', 'jerry.martinez118@yahoo.com', '1986-03-25', 'Malaysia'),
    ('Layla', 'Gomez', 'Female', 'layla.gomez295@hotmail.com', '1987-05-18', 'Netherlands'),
    ('Joseph', 'Ramirez', 'Female', 'joseph.ramirez28@hotmail.com', '2005-06-15', 'Italy'),
    ('Paul', 'Ahmed', 'Male', 'paul.ahmed268@hotmail.com', '1996-01-14', 'Japan'),
    ('Daniel', 'Ibrahim', 'Male', null, '1955-11-13', 'Sweden'),
    ('Dennis', 'Murphy', 'Female', 'dennis.murphy563@yahoo.com', '1994-05-24', 'Chile'),
    ('Barbara', 'Matuschek', 'Other', 'barbara.matuschek506@yahoo.com', '1973-01-04', 'Spain'),
    ('George', 'Price', 'Female', 'george.price775@mail.com', '1977-10-15', 'Chile'),
    ('Isabella', 'Miller', 'Other', 'isabella.miller531@hotmail.com', '1968-06-03', 'Philippines'),
    ('Jeffrey', 'Matuschek', 'Other', 'jeffrey.matuschek53@hotmail.com', '1958-05-18', 'India'),
    ('Ryan', 'Miller', 'Other', 'ryan.miller786@mail.com', '1996-10-23', 'France'),
    ('Thomas', 'King', 'Male', 'thomas.king738@feeblurner.com', '1997-11-01', 'Pakistan'),
    ('Luna', 'Moore', 'Other', 'luna.moore617@icloud.com', '1992-07-25', 'Mexico'),
    ('Larry', 'Hughes', 'Male', 'larry.hughes971@yahoo.com', '1992-01-11', 'United States'),
    ('Thomas', 'Hill', 'Male', null, '1978-10-13', 'Germany'),
    ('Aria', 'James', 'Male', 'aria.james627@feeblurner.com', '1964-05-27', 'United Kingdom'),
    ('Michael', 'Phillips', 'Male', 'michael.phillips635@yahoo.com', '1970-04-12', 'Denmark'),
    ('Charles', 'Murphy', 'Female', 'charles.murphy645@mail.com', '1975-12-10', 'Australia'),
    ('Paul', 'Davis', 'Male', 'paul.davis163@yahoo.com', '1951-01-12', 'South Korea'),
    ('Linda', 'Harris', 'Other', 'linda.harris799@yahoo.com', '1965-11-06', 'Canada'),
    ('Steven', 'Martinez', 'Male', 'steven.martinez912@hotmail.com', '1980-07-19', 'Saudi Arabia'),
    ('Madison', 'Hill', 'Male', null, '1956-02-17', 'Saudi Arabia'),
    ('Charlotte', 'Perez', 'Male', 'charlotte.perez43@hotmail.com', '1997-09-28', 'Vietnam'),
    ('Madison', 'Sterling', 'Other', null, '1988-07-28', 'Egypt'),
    ('Aurora', 'Mitchell', 'Female', 'aurora.mitchell445@outlook.com', '1977-09-14', 'Germany'),
    ('Fernanda', 'Colmore', 'Female', 'fernanda.colmore445@icloud.com', '2003-09-15', 'Kenya'),
    ('Jeffrey', 'Parker', 'Other', 'jeffrey.parker762@yahoo.com', '1974-03-13', 'Brazil'),
    ('Sarah', 'Clark', 'Female', 'sarah.clark435@hotmail.com', '1965-01-12', 'Turkey'),
    ('John', 'Bennett', 'Female', null, '1993-11-26', 'Chile'),
    ('Jeffrey', 'Garcia', 'Other', 'jeffrey.garcia351@outlook.com', '1951-03-26', 'Indonesia'),
    ('Jerry', 'Diaz', 'Other', 'jerry.diaz64@mail.com', '1950-08-26', 'Ireland'),
    ('Ella', 'Mitchell', 'Other', null, '1999-12-22', 'South Korea'),
    ('Raymond', 'Evans', 'Female', null, '1955-06-15', 'Finland'),
    ('Audrey', 'Jackson', 'Other', 'audrey.jackson343@hotmail.com', '1952-04-08', 'South Africa'),
    ('Daniel', 'King', 'Male', 'daniel.king451@feeblurner.com', '1986-12-14', 'Netherlands'),
    ('Linda', 'Martin', 'Other', 'linda.martin913@feeblurner.com', '1984-10-25', 'Bangladesh'),
    ('Michael', 'Nelson', 'Female', 'michael.nelson669@outlook.com', '1991-01-21', 'Chile'),
    ('Aurora', 'Lopez', 'Male', 'aurora.lopez768@mail.com', '1957-07-18', 'Pakistan'),
    ('John', 'Cooper', 'Female', null, '1984-11-26', 'Netherlands'),
    ('Mary', 'Jackson', 'Other', 'mary.jackson434@feeblurner.com', '1981-06-23', 'Egypt'),
    ('Aurora', 'Evans', 'Other', null, '2004-02-06', 'Egypt'),
    ('Lucas', 'Wilson', 'Male', 'lucas.wilson994@feeblurner.com', '1968-08-17', 'UAE'),
    ('Hazel', 'Myers', 'Other', 'hazel.myers313@outlook.com', '1957-07-14', 'Kenya'),
    ('Charlotte', 'James', 'Male', 'charlotte.james914@icloud.com', '1963-09-16', 'Poland'),
    ('Edward', 'Jones', 'Female', null, '1993-08-04', 'Germany'),
    ('Nicholas', 'Cox', 'Female', 'nicholas.cox409@yahoo.com', '1980-07-14', 'Italy'),
    ('Layla', 'Bailey', 'Female', 'layla.bailey192@icloud.com', '1950-10-21', 'Chile'),
    ('George', 'Miller', 'Female', 'george.miller530@outlook.com', '1953-06-09', 'Norway'),
    ('Harper', 'Khan', 'Female', 'harper.khan288@hotmail.com', '1955-12-21', 'Egypt'),
    ('Madison', 'Gonzalez', 'Male', 'madison.gonzalez603@mail.com', '1996-03-19', 'Mexico'),
    ('Hazel', 'Evans', 'Female', 'hazel.evans890@outlook.com', '1968-06-03', 'Saudi Arabia'),
    ('Aria', 'Carter', 'Other', 'aria.carter649@outlook.com', '1997-12-12', 'Thailand'),
    ('John', 'Ramirez', 'Female', 'john.ramirez765@feeblurner.com', '1963-09-17', 'Poland'),
    ('Omar', 'Hassan', 'Female', 'omar.hassan329@gmail.com', '1987-02-18', 'Spain'),
    ('Jennifer', 'Wilson', 'Female', 'jennifer.wilson613@gmail.com', '1954-12-06', 'Pakistan'),
    ('Nicholas', 'Thomas', 'Female', 'nicholas.thomas556@feeblurner.com', '1982-03-14', 'New Zealand'),
    ('Raymond', 'Cruz', 'Female', 'raymond.cruz69@hotmail.com', '1981-07-04', 'France'),
    ('Jerry', 'Walker', 'Female', 'jerry.walker28@hotmail.com', '1961-06-13', 'Sweden'),
    ('David', 'Wood', 'Female', 'david.wood976@icloud.com', '1988-07-20', 'Norway'),
    ('Karen', 'Omar', 'Male', 'karen.omar912@feeblurner.com', '1962-05-17', 'United Kingdom'),
    ('Riley', 'Torres', 'Male', null, '1992-04-02', 'Norway'),
    ('Isabella', 'Gray', 'Other', 'isabella.gray24@gmail.com', '1983-12-17', 'Chile'),
    ('Larry', 'Diaz', 'Male', 'larry.diaz539@gmail.com', '1951-06-08', 'Spain'),
    ('Lily', 'Torres', 'Other', null, '1976-01-19', 'Colombia'),
    ('Luna', 'Phillips', 'Other', null, '1986-05-26', 'Poland'),
    ('Rebecca', 'Thompson', 'Female', 'rebecca.thompson317@icloud.com', '1980-07-27', 'Bangladesh'),
    ('Jose', 'Richardson', 'Male', 'jose.richardson296@gmail.com', '1973-02-28', 'United Kingdom'),
    ('Samuel', 'Wright', 'Male', null, '1984-03-11', 'Chile'),
    ('Miguel', 'Kelly', 'Female', 'miguel.kelly157@outlook.com', '1995-09-17', 'Norway'),
    ('John', 'Davis', 'Female', 'john.davis874@gmail.com', '1984-03-13', 'Nigeria'),
    ('Chloe', 'Sterling', 'Female', 'chloe.sterling143@icloud.com', '1964-03-19', 'Turkey'),
    ('Fernanda', 'Nguyen', 'Male', 'fernanda.nguyen681@yahoo.com', '1986-05-17', 'New Zealand'),
    ('Jacob', 'Singh', 'Female', 'jacob.singh54@hotmail.com', '1980-07-17', 'South Africa'),
    ('Susan', 'Murphy', 'Other', 'susan.murphy820@icloud.com', '1974-01-28', 'Germany'),
    ('Luna', 'Carter', 'Other', 'luna.carter981@yahoo.com', '2005-06-25', 'United Kingdom'),
    ('Jason', 'Evans', 'Male', 'jason.evans412@outlook.com', '2000-02-26', 'Sweden'),
    ('Jose', 'James', 'Male', null, '1984-03-26', 'United Kingdom'),
    ('Ronald', 'Parker', 'Male', 'ronald.parker468@mail.com', '1991-03-13', 'South Africa'),
    ('Rebecca', 'Lee', 'Female', null, '1964-03-06', 'Colombia'),
    ('Benjamin', 'Morgan', 'Female', 'benjamin.morgan785@hotmail.com', '1954-07-27', 'Canada'),
    ('Sofia', 'Reyes', 'Female', 'sofia.reyes566@feeblurner.com', '2004-08-15', 'Denmark'),
    ('Elizabeth', 'Gonzalez', 'Other', 'elizabeth.gonzalez48@feeblurner.com', '1977-09-03', 'Sweden'),
    ('Carlos', 'Bennett', 'Other', 'carlos.bennett800@outlook.com', '1955-04-12', 'United States'),
    ('Sarah', 'Bailey', 'Male', 'sarah.bailey884@icloud.com', '1961-10-19', 'Indonesia'),
    ('Violet', 'Perez', 'Male', null, '1978-04-07', 'Brazil'),
    ('Sarah', 'Anderson', 'Other', 'sarah.anderson372@outlook.com', '2003-11-04', 'Japan'),
    ('Dennis', 'Miller', 'Male', 'dennis.miller950@icloud.com', '2000-01-16', 'Japan'),
    ('Joshua', 'Lewis', 'Other', 'joshua.lewis643@icloud.com', '1990-11-05', 'Canada'),
    ('Penelope', 'Matuschek', 'Other', 'penelope.matuschek770@gmail.com', '1994-04-05', 'Pakistan'),
    ('Lily', 'Hernandez', 'Female', 'lily.hernandez924@yahoo.com', '1979-12-20', 'Malaysia'),
    ('Carlos', 'Phillips', 'Female', 'carlos.phillips830@mail.com', '2004-07-02', 'Brazil'),
    ('Audrey', 'Wilson', 'Male', null, '1978-10-16', 'Kenya'),
    ('Lucas', 'Taylor', 'Other', 'lucas.taylor464@yahoo.com', '1959-01-24', 'Finland'),
    ('Susan', 'Baker', 'Other', 'susan.baker191@outlook.com', '1963-01-13', 'Turkey'),
    ('Stella', 'Jones', 'Female', 'stella.jones508@outlook.com', '1974-01-19', 'Denmark'),
    ('Claire', 'Khan', 'Female', 'claire.khan776@yahoo.com', '1977-11-04', 'South Africa'),
    ('Savannah', 'Bailey', 'Male', 'savannah.bailey468@icloud.com', '1988-04-15', 'Saudi Arabia'),
    ('Jeffrey', 'Torres', 'Male', 'jeffrey.torres932@gmail.com', '1986-12-20', 'Ireland'),
    ('Carlos', 'Campbell', 'Male', 'carlos.campbell284@hotmail.com', '1999-06-22', 'UAE'),
    ('Savannah', 'Cook', 'Female', 'savannah.cook903@yahoo.com', '1988-04-01', 'Italy'),
    ('Eric', 'Thomas', 'Female', 'eric.thomas644@hotmail.com', '1969-05-21', 'Vietnam'),
    ('Aria', 'Richardson', 'Male', 'aria.richardson884@feeblurner.com', '1999-04-17', 'China'),
    ('Joseph', 'Thompson', 'Other', null, '1950-03-13', 'Spain'),
    ('Ava', 'Parker', 'Female', null, '1984-11-08', 'Australia'),
    ('Stephen', 'Matuschek', 'Female', 'stephen.matuschek478@feeblurner.com', '1991-11-24', 'Australia'),
    ('Aurora', 'Wilson', 'Other', 'aurora.wilson955@yahoo.com', '1970-06-03', 'Spain'),
    ('Isabella', 'Martinez', 'Other', 'isabella.martinez183@yahoo.com', '1982-01-23', 'Germany'),
    ('Charles', 'Hassan', 'Male', 'charles.hassan68@yahoo.com', '1974-01-27', 'Bangladesh'),
    ('Matthew', 'Lewis', 'Female', 'matthew.lewis918@icloud.com', '1965-10-03', 'Chile'),
    ('Valentina', 'Reyes', 'Other', 'valentina.reyes625@yahoo.com', '2002-05-14', 'Turkey'),
    ('Harper', 'Evans', 'Other', 'harper.evans419@outlook.com', '2003-01-22', 'Japan'),
    ('Stephen', 'Wood', 'Female', 'stephen.wood447@yahoo.com', '1970-09-16', 'Canada'),
    ('Scarlett', 'Turner', 'Female', 'scarlett.turner900@gmail.com', '1970-11-28', 'Indonesia'),
    ('Barbara', 'Watson', 'Male', 'barbara.watson552@icloud.com', '1992-08-22', 'Brazil'),
    ('Stella', 'Kumar', 'Female', 'stella.kumar264@hotmail.com', '1955-05-28', 'Malaysia'),
    ('Gregory', 'Lopez', 'Female', null, '1967-10-16', 'Netherlands'),
    ('Lucas', 'Adams', 'Male', 'lucas.adams762@outlook.com', '1992-09-17', 'Brazil'),
    ('Barbara', 'Hassan', 'Female', 'barbara.hassan11@feeblurner.com', '1992-07-12', 'Brazil'),
    ('Gregory', 'Garcia', 'Other', 'gregory.garcia708@feeblurner.com', '1977-04-01', 'Colombia'),
    ('Donald', 'Hughes', 'Female', null, '2003-09-17', 'Ireland'),
    ('Edward', 'Green', 'Female', 'edward.green776@icloud.com', '1964-11-18', 'Turkey'),
    ('Brandon', 'Thompson', 'Other', 'brandon.thompson19@outlook.com', '1975-01-02', 'Poland'),
    ('Kevin', 'Omar', 'Other', null, '1978-05-17', 'South Africa'),
    ('Isabella', 'King', 'Male', 'isabella.king626@mail.com', '1991-12-09', 'Norway'),
    ('Miguel', 'Collins', 'Female', 'miguel.collins118@hotmail.com', '1996-11-10', 'Brazil'),
    ('Jack', 'Omar', 'Other', 'jack.omar775@outlook.com', '1955-02-19', 'Ireland'),
    ('Robert', 'Flores', 'Other', 'robert.flores612@icloud.com', '1953-08-25', 'France'),
    ('Alexander', 'Cook', 'Female', 'alexander.cook170@icloud.com', '1983-12-21', 'Pakistan'),
    ('Claire', 'Wilson', 'Other', 'claire.wilson275@hotmail.com', '1975-11-13', 'Nigeria'),
    ('Victoria', 'Phillips', 'Other', 'victoria.phillips514@icloud.com', '2004-12-25', 'Ireland'),
    ('Violet', 'Kumar', 'Female', 'violet.kumar367@outlook.com', '1960-09-17', 'South Africa'),
    ('Sofia', 'Gray', 'Other', 'sofia.gray225@outlook.com', '1989-06-01', 'India'),
    ('Violet', 'Miller', 'Other', 'violet.miller768@gmail.com', '2004-11-03', 'Malaysia'),
    ('William', 'Wilson', 'Male', 'william.wilson803@icloud.com', '1956-05-21', 'Netherlands'),
    ('Richard', 'Lewis', 'Other', null, '1995-01-10', 'Germany'),
    ('Harper', 'Sterling', 'Other', 'harper.sterling112@gmail.com', '1988-03-26', 'Saudi Arabia'),
    ('Aaron', 'Brown', 'Other', 'aaron.brown45@hotmail.com', '1990-12-02', 'South Africa'),
    ('Grace', 'King', 'Other', 'grace.king927@hotmail.com', '1986-03-10', 'UAE'),
    ('Emma', 'Sanchez', 'Female', 'emma.sanchez173@yahoo.com', '1984-04-19', 'Vietnam'),
    ('Miguel', 'Ward', 'Female', null, '1961-03-20', 'Sweden'),
    ('Paul', 'Stewart', 'Other', 'paul.stewart497@hotmail.com', '1950-06-25', 'Australia'),
    ('Emily', 'Campbell', 'Male', 'emily.campbell566@feeblurner.com', '1977-11-12', 'Pakistan'),
    ('Daniel', 'Collins', 'Male', 'daniel.collins402@outlook.com', '1982-11-28', 'Egypt'),
    ('Sofia', 'Miller', 'Female', 'sofia.miller715@hotmail.com', '1950-09-21', 'France'),
    ('Isabella', 'Campbell', 'Male', 'isabella.campbell979@yahoo.com', '1978-06-21', 'Poland'),
    ('Claire', 'Thomas', 'Female', null, '1992-08-21', 'Chile'),
    ('Amelia', 'Colmore', 'Male', 'amelia.colmore889@mail.com', '1966-07-25', 'Nigeria'),
    ('Nora', 'Colmore', 'Male', 'nora.colmore701@hotmail.com', '1971-08-03', 'Chile'),
    ('Jessica', 'Cox', 'Other', null, '1981-12-15', 'Poland'),
    ('Robert', 'Singh', 'Male', 'robert.singh658@feeblurner.com', '1962-03-05', 'Turkey'),
    ('Hannah', 'Kumar', 'Male', 'hannah.kumar356@yahoo.com', '1996-05-21', 'Indonesia'),
    ('Isabella', 'Bell', 'Female', 'isabella.bell964@hotmail.com', '1953-01-12', 'China'),
    ('Stella', 'Gomez', 'Other', null, '1986-03-15', 'Poland'),
    ('Ronald', 'Roberts', 'Male', 'ronald.roberts463@yahoo.com', '1997-10-01', 'Mexico'),
    ('Edward', 'Collins', 'Other', 'edward.collins65@hotmail.com', '1960-05-10', 'UAE'),
    ('Paul', 'Hassan', 'Male', null, '2005-12-25', 'Ireland'),
    ('Amelia', 'Ahmed', 'Other', 'amelia.ahmed295@outlook.com', '1983-07-20', 'New Zealand'),
    ('Tyler', 'Young', 'Male', 'tyler.young257@icloud.com', '1971-03-13', 'Malaysia'),
    ('Raymond', 'Matuschek', 'Female', 'raymond.matuschek908@hotmail.com', '1980-05-01', 'Kenya'),
    ('Charles', 'Smith', 'Other', 'charles.smith696@hotmail.com', '1995-05-04', 'India'),
    ('James', 'Morris', 'Male', 'james.morris938@feeblurner.com', '1996-09-05', 'Poland'),
    ('Jerry', 'Howard', 'Other', 'jerry.howard238@yahoo.com', '1999-04-19', 'New Zealand'),
    ('Riley', 'Morris', 'Male', 'riley.morris402@outlook.com', '1954-08-07', 'Denmark'),
    ('Ella', 'Nelson', 'Male', 'ella.nelson717@mail.com', '1991-02-18', 'Canada'),
    ('Michael', 'Reed', 'Male', 'michael.reed662@hotmail.com', '1989-08-04', 'Australia'),
    ('Lucas', 'Gomez', 'Female', 'lucas.gomez615@feeblurner.com', '1964-09-06', 'Chile'),
    ('Linda', 'Hughes', 'Male', 'linda.hughes60@feeblurner.com', '1998-06-17', 'France'),
    ('Chloe', 'Torres', 'Other', 'chloe.torres896@mail.com', '1994-06-10', 'UAE'),
    ('Raymond', 'Williams', 'Other', 'raymond.williams318@mail.com', '2000-02-22', 'United States'),
    ('Dennis', 'King', 'Female', 'dennis.king65@outlook.com', '1970-08-09', 'Canada'),
    ('Rebecca', 'Howard', 'Other', 'rebecca.howard176@gmail.com', '1958-05-18', 'France'),
    ('Linda', 'Gomez', 'Male', null, '1966-08-13', 'China'),
    ('Hazel', 'Kumar', 'Female', 'hazel.kumar237@feeblurner.com', '1992-10-03', 'South Korea'),
    ('Ryan', 'Ahmed', 'Male', 'ryan.ahmed446@hotmail.com', '2002-10-06', 'South Africa'),
    ('Miguel', 'Edwards', 'Male', null, '1996-03-05', 'Denmark'),
    ('Lucas', 'Harris', 'Male', 'lucas.harris324@feeblurner.com', '1975-06-24', 'New Zealand'),
    ('James', 'Ward', 'Other', 'james.ward100@mail.com', '1953-04-27', 'Japan'),
    ('Luna', 'Harris', 'Male', 'luna.harris155@mail.com', '1973-07-03', 'Denmark'),
    ('Aaron', 'Gomez', 'Female', null, '2001-09-21', 'Poland'),
    ('Valentina', 'Hernandez', 'Other', 'valentina.hernandez506@icloud.com', '1957-08-02', 'New Zealand'),
    ('Scarlett', 'Martin', 'Other', 'scarlett.martin108@mail.com', '1982-05-21', 'France'),
    ('Hannah', 'Lee', 'Other', 'hannah.lee415@icloud.com', '1968-09-08', 'Philippines'),
    ('Barbara', 'Davis', 'Other', null, '1993-09-24', 'New Zealand'),
    ('Emma', 'Wood', 'Male', null, '1994-10-06', 'Spain'),
    ('Richard', 'Bennett', 'Male', 'richard.bennett44@yahoo.com', '1985-03-24', 'Egypt'),
    ('Hannah', 'King', 'Female', 'hannah.king136@hotmail.com', '1985-02-12', 'Finland'),
    ('Charles', 'Mitchell', 'Male', 'charles.mitchell7@mail.com', '1973-07-10', 'Sweden'),
    ('Olivia', 'Peterson', 'Male', null, '1961-06-04', 'South Africa'),
    ('Adriana', 'Lopez', 'Male', 'adriana.lopez906@gmail.com', '1985-03-18', 'Pakistan'),
    ('Camila', 'Myers', 'Female', 'camila.myers965@outlook.com', '1981-08-27', 'Denmark'),
    ('Grace', 'Ward', 'Female', 'grace.ward786@mail.com', '1967-01-25', 'Philippines'),
    ('Jacob', 'James', 'Other', 'jacob.james140@yahoo.com', '1998-06-20', 'Poland'),
    ('Jose', 'Lopez', 'Other', null, '1959-03-14', 'Finland'),
    ('Mary', 'Rodriguez', 'Female', 'mary.rodriguez478@gmail.com', '2005-02-02', 'UAE'),
    ('Audrey', 'Johnson', 'Female', 'audrey.johnson525@mail.com', '1991-09-06', 'Nigeria'),
    ('Fernanda', 'Hill', 'Female', 'fernanda.hill797@icloud.com', '2002-02-20', 'Ireland'),
    ('Karen', 'Rivera', 'Other', 'karen.rivera404@outlook.com', '1974-01-10', 'Poland'),
    ('Lily', 'Ramirez', 'Male', 'lily.ramirez295@outlook.com', '1997-01-02', 'Norway'),
    ('Hannah', 'Martinez', 'Male', 'hannah.martinez806@hotmail.com', '1976-01-28', 'Chile'),
    ('Thomas', 'Ward', 'Female', 'thomas.ward784@feeblurner.com', '2002-10-27', 'Turkey'),
    ('Aurora', 'Smith', 'Other', 'aurora.smith264@outlook.com', '2004-01-22', 'Portugal'),
    ('Chloe', 'Stewart', 'Male', 'chloe.stewart425@gmail.com', '1962-03-20', 'Denmark'),
    ('Patrick', 'Martinez', 'Female', null, '1999-07-28', 'United Kingdom'),
    ('Mark', 'Bell', 'Male', 'mark.bell107@feeblurner.com', '1962-06-10', 'Pakistan'),
    ('Sarah', 'Sterling', 'Other', 'sarah.sterling342@gmail.com', '1952-09-27', 'Vietnam'),
    ('Susan', 'Thomas', 'Other', null, '1994-01-15', 'Brazil'),
    ('Charlotte', 'Cooper', 'Female', 'charlotte.cooper553@gmail.com', '2001-10-16', 'Poland'),
    ('Patricia', 'Ahmed', 'Female', null, '1953-02-26', 'Italy'),
    ('Isabella', 'Torres', 'Male', 'isabella.torres654@yahoo.com', '1991-06-22', 'United States'),
    ('Fernanda', 'Cox', 'Other', 'fernanda.cox860@hotmail.com', '1998-08-21', 'United States'),
    ('Jacob', 'Cruz', 'Male', 'jacob.cruz580@outlook.com', '1995-05-16', 'China'),
    ('Carlos', 'Taylor', 'Female', 'carlos.taylor61@icloud.com', '1957-05-09', 'United Kingdom'),
    ('Alexander', 'Phillips', 'Other', 'alexander.phillips317@outlook.com', '1961-08-10', 'Chile'),
    ('James', 'Davis', 'Male', 'james.davis967@outlook.com', '1993-10-04', 'Sweden'),
    ('Richard', 'Wright', 'Other', 'richard.wright173@feeblurner.com', '1955-06-13', 'New Zealand'),
    ('Hannah', 'Harris', 'Female', 'hannah.harris100@hotmail.com', '1986-07-05', 'Saudi Arabia'),
    ('Camila', 'Hall', 'Female', 'camila.hall86@yahoo.com', '1997-02-10', 'Ireland'),
    ('John', 'Baker', 'Female', 'john.baker164@gmail.com', '1985-09-08', 'Spain'),
    ('George', 'Ward', 'Male', 'george.ward409@mail.com', '1967-11-16', 'Pakistan'),
    ('Isabella', 'Hughes', 'Other', 'isabella.hughes916@mail.com', '1960-10-05', 'Poland'),
    ('Omar', 'Green', 'Other', 'omar.green836@icloud.com', '1971-06-11', 'Italy'),
    ('Charlotte', 'Murphy', 'Female', null, '1954-05-22', 'Sweden'),
    ('Barbara', 'Jackson', 'Other', 'barbara.jackson868@feeblurner.com', '1961-12-24', 'New Zealand');

-- =========================================================
-- Insert ~600 Cars
-- =========================================================
insert into car (make, model, price) values
    ('Jeep', 'Gladiator', 123287.0),
    ('Cadillac', 'CT4', 35805.53),
    ('Buick', 'Encore', 56372.92),
    ('Dodge', 'Ram 1500', 80648.01),
    ('Volvo', 'V60', 111443.35),
    ('Mazda', 'Mazda6', 84803.95),
    ('GMC', 'Terrain', 101917.26),
    ('Infiniti', 'G37', 101080.81),
    ('Tesla', 'Roadster', 46040.6),
    ('Subaru', 'BRZ', 139530.1),
    ('Dodge', 'Challenger', 83902.97),
    ('Mercedes-Benz', 'AMG GT', 135724.86),
    ('Audi', 'A4', 118584.05),
    ('Honda', 'Ridgeline', 72804.66),
    ('Chevrolet', 'Malibu', 55846.66),
    ('Toyota', 'Camry', 137327.61),
    ('Kia', 'Soul', 139837.64),
    ('Mercedes-Benz', 'G-Class', 99154.03),
    ('Land Rover', 'Evoque', 92810.88),
    ('Infiniti', 'QX60', 123252.4),
    ('Infiniti', 'Q70', 26893.83),
    ('Cadillac', 'CT4', 94299.9),
    ('Subaru', 'Crosstrek', 131506.56),
    ('Kia', 'K5', 26202.9),
    ('Mazda', 'Mazda3', 130759.97),
    ('Cadillac', 'XT5', 138110.92),
    ('Hyundai', 'Tucson', 75917.28),
    ('Toyota', 'Sienna', 123957.14),
    ('Volvo', 'S90', 95044.37),
    ('Volvo', 'XC60', 127976.87),
    ('Toyota', 'Corolla', 127055.79),
    ('Nissan', 'Murano', 132556.92),
    ('BMW', 'X3', 132000.02),
    ('Volkswagen', 'Atlas', 100288.29),
    ('Audi', 'e-tron', 56718.89),
    ('Ford', 'Ranger', 82141.07),
    ('Mercedes-Benz', 'AMG GT', 45841.32),
    ('Acura', 'TSX', 40056.19),
    ('Jeep', 'Compass', 136911.58),
    ('Subaru', 'Legacy', 67979.49),
    ('Infiniti', 'QX80', 63312.06),
    ('Lexus', 'ES', 33191.12),
    ('Volkswagen', 'ID.4', 31622.76),
    ('Volvo', 'S60', 14928.48),
    ('GMC', 'Yukon', 139648.28),
    ('Buick', 'LaCrosse', 47121.15),
    ('Mazda', 'CX-9', 20589.38),
    ('Kia', 'Soul', 114193.61),
    ('Acura', 'ILX', 78881.66),
    ('Toyota', 'Camry', 142728.88),
    ('Ford', 'Bronco', 102917.71),
    ('Kia', 'Telluride', 47647.38),
    ('Lexus', 'LC', 15434.99),
    ('Ford', 'Ranger', 80397.52),
    ('Honda', 'Civic', 95978.71),
    ('Tesla', 'Model S', 144040.72),
    ('Subaru', 'Outback', 36968.97),
    ('BMW', 'Z4', 45523.5),
    ('Audi', 'A6', 11701.76),
    ('Nissan', 'Rogue', 70849.12),
    ('Honda', 'Passport', 46181.99),
    ('Buick', 'Encore', 122476.58),
    ('Cadillac', 'CT4', 72433.81),
    ('BMW', '3 Series', 13976.28),
    ('Ford', 'Edge', 129296.83),
    ('GMC', 'Terrain', 55065.81),
    ('Mazda', 'CX-30', 24249.31),
    ('GMC', 'Canyon', 128298.81),
    ('Toyota', 'Prius', 109960.58),
    ('Audi', 'A3', 111608.3),
    ('Mazda', 'Mazda6', 72926.2),
    ('Toyota', 'RAV4', 51091.6),
    ('Nissan', 'Kicks', 100075.3),
    ('Buick', 'Envision', 122714.12),
    ('Volvo', 'S90', 13690.17),
    ('Hyundai', 'Elantra', 69466.22),
    ('Acura', 'RLX', 95876.76),
    ('Buick', 'Encore', 128226.78),
    ('Infiniti', 'G37', 73425.04),
    ('Porsche', 'Panamera', 89302.9),
    ('Mazda', 'CX-5', 92067.18),
    ('Subaru', 'Crosstrek', 8713.38),
    ('Volkswagen', 'Arteon', 26868.73),
    ('Infiniti', 'QX50', 63095.72),
    ('Toyota', 'Sienna', 102176.77),
    ('Tesla', 'Roadster', 103666.02),
    ('Audi', 'Q7', 34352.58),
    ('Mercedes-Benz', 'G-Class', 51335.31),
    ('Acura', 'TSX', 88731.6),
    ('GMC', 'Canyon', 14670.4),
    ('Tesla', 'Cybertruck', 121488.18),
    ('Infiniti', 'Q50', 85172.0),
    ('Volvo', 'C40', 126801.52),
    ('Volkswagen', 'GTI', 48284.68),
    ('Hyundai', 'Sonata', 59239.81),
    ('Volkswagen', 'Arteon', 81310.07),
    ('Porsche', 'Panamera', 34268.68),
    ('Mazda', 'CX-30', 49074.7),
    ('Dodge', 'Charger', 53320.05),
    ('Lexus', 'LX', 109507.05),
    ('Subaru', 'WRX', 98525.94),
    ('Mazda', 'CX-50', 128501.08),
    ('GMC', 'Terrain', 68073.44),
    ('BMW', 'X1', 142969.6),
    ('Mercedes-Benz', 'E-Class', 111878.49),
    ('Volkswagen', 'Passat', 129118.63),
    ('Lexus', 'LS', 126576.1),
    ('Volvo', 'XC90', 86402.28),
    ('GMC', 'Acadia', 94667.3),
    ('Mazda', 'CX-5', 18114.75),
    ('Porsche', 'Cayenne', 121432.77),
    ('Infiniti', 'G37', 22365.94),
    ('Kia', 'K5', 99829.96),
    ('Honda', 'Pilot', 135403.55),
    ('Chevrolet', 'Tahoe', 111464.49),
    ('Toyota', 'Tundra', 26405.11),
    ('Buick', 'Enclave', 117575.92),
    ('Dodge', 'Viper', 68699.71),
    ('Lexus', 'UX', 69052.02),
    ('Hyundai', 'Kona', 88660.31),
    ('Mercedes-Benz', 'G-Class', 14281.24),
    ('Chevrolet', 'Suburban', 29514.33),
    ('Volkswagen', 'Taos', 44099.34),
    ('GMC', 'Canyon', 108627.67),
    ('Chevrolet', 'Suburban', 141568.11),
    ('BMW', 'X1', 26857.27),
    ('Tesla', 'Model 3', 141393.36),
    ('Cadillac', 'XT4', 110921.72),
    ('Jeep', 'Compass', 129114.41),
    ('Subaru', 'WRX', 94541.75),
    ('Land Rover', 'Discovery', 13523.13),
    ('Ford', 'F-150', 114487.37),
    ('Mazda', 'Mazda6', 36864.54),
    ('Ford', 'Escape', 35741.8),
    ('Dodge', 'Ram 1500', 20597.05),
    ('Toyota', 'Tacoma', 54170.82),
    ('Toyota', '4Runner', 137903.7),
    ('Subaru', 'Legacy', 32587.17),
    ('Infiniti', 'Q50', 58373.72),
    ('Acura', 'RLX', 22812.83),
    ('Acura', 'RLX', 25334.0),
    ('Lexus', 'LS', 132512.89),
    ('Acura', 'MDX', 10532.05),
    ('Volkswagen', 'Taos', 66694.06),
    ('Buick', 'Verano', 32257.37),
    ('Honda', 'Odyssey', 101012.38),
    ('Volkswagen', 'GTI', 54986.25),
    ('Porsche', 'Cayenne', 111664.89),
    ('Volkswagen', 'GTI', 107819.57),
    ('Mazda', 'MX-5 Miata', 89396.77),
    ('Honda', 'Odyssey', 61117.16),
    ('Buick', 'Enclave', 73202.14),
    ('Cadillac', 'CT5', 32208.14),
    ('Honda', 'Civic', 133251.09),
    ('Lexus', 'UX', 52928.27),
    ('Audi', 'R8', 34342.89),
    ('Volvo', 'XC40', 10142.6),
    ('Jeep', 'Renegade', 125196.81),
    ('Volkswagen', 'Passat', 64005.4),
    ('Subaru', 'Crosstrek', 83810.75),
    ('Mercedes-Benz', 'C-Class', 96456.37),
    ('Nissan', 'Kicks', 18074.61),
    ('BMW', 'Z4', 136880.54),
    ('Audi', 'Q3', 95299.16),
    ('Hyundai', 'Elantra', 111135.39),
    ('Kia', 'Carnival', 60577.14),
    ('Chevrolet', 'Malibu', 30885.25),
    ('Kia', 'EV6', 104401.92),
    ('Cadillac', 'CTS', 56466.36),
    ('Acura', 'ILX', 67588.66),
    ('Dodge', 'Ram 1500', 129807.69),
    ('Dodge', 'Durango', 69833.39),
    ('Dodge', 'Durango', 14727.18),
    ('Subaru', 'Ascent', 32463.96),
    ('Nissan', 'Maxima', 137521.76),
    ('Mercedes-Benz', 'S-Class', 126088.38),
    ('Toyota', 'Prius', 108275.62),
    ('Volkswagen', 'Taos', 112639.81),
    ('Mazda', 'CX-9', 113261.57),
    ('Dodge', 'Charger', 126349.75),
    ('Jeep', 'Renegade', 28197.62),
    ('Jeep', 'Grand Cherokee', 128223.14),
    ('Dodge', 'Ram 1500', 14811.32),
    ('BMW', 'Z4', 22968.22),
    ('Toyota', 'RAV4', 130564.78),
    ('Toyota', 'Corolla', 25651.13),
    ('Dodge', 'Challenger', 44718.88),
    ('Subaru', 'Crosstrek', 14835.09),
    ('Volkswagen', 'Taos', 143847.08),
    ('Buick', 'LaCrosse', 134884.88),
    ('Volkswagen', 'Atlas', 34690.86),
    ('Audi', 'e-tron', 136425.86),
    ('Kia', 'Soul', 62641.96),
    ('Volkswagen', 'Golf', 144044.75),
    ('Lexus', 'GX', 44997.33),
    ('Volvo', 'S90', 66743.1),
    ('Audi', 'Q3', 128174.01),
    ('Audi', 'TT', 115313.93),
    ('Honda', 'Accord', 127462.54),
    ('Buick', 'Verano', 137401.18),
    ('Audi', 'A8', 100831.88),
    ('Acura', 'NSX', 77000.93),
    ('Nissan', 'Murano', 35947.38),
    ('Ford', 'Ranger', 62039.4),
    ('Tesla', 'Model Y', 19538.79),
    ('Lexus', 'LC', 77788.53),
    ('GMC', 'Safari', 81223.49),
    ('Volkswagen', 'Golf', 136790.41),
    ('BMW', 'Z4', 35279.63),
    ('Acura', 'TSX', 62956.15),
    ('Buick', 'Regal', 143250.3),
    ('Mercedes-Benz', 'GLC', 79695.26),
    ('Volvo', 'S60', 66402.89),
    ('Lexus', 'RX', 136967.53),
    ('Volvo', 'XC40', 36806.68),
    ('Volvo', 'V90', 39015.89),
    ('Cadillac', 'XT5', 104200.11),
    ('Lexus', 'LC', 137119.46),
    ('GMC', 'Sierra', 128182.57),
    ('Ford', 'Edge', 118730.14),
    ('Dodge', 'Charger', 29758.95),
    ('Mazda', 'CX-30', 40514.95),
    ('Acura', 'ILX', 19196.1),
    ('Infiniti', 'QX60', 80378.58),
    ('Kia', 'K5', 24265.55),
    ('Dodge', 'Durango', 17764.33),
    ('Tesla', 'Roadster', 13736.55),
    ('Cadillac', 'XT6', 116115.41),
    ('Hyundai', 'Sonata', 117266.84),
    ('Mercedes-Benz', 'G-Class', 106132.04),
    ('Jeep', 'Grand Cherokee', 77977.51),
    ('Dodge', 'Ram 1500', 15027.15),
    ('Mercedes-Benz', 'C-Class', 110190.13),
    ('BMW', 'M3', 98668.63),
    ('Porsche', 'Taycan', 19043.84),
    ('GMC', 'Canyon', 47340.92),
    ('Jeep', 'Grand Cherokee', 31025.38),
    ('Volvo', 'C40', 37513.09),
    ('Mazda', 'MX-5 Miata', 141060.79),
    ('Audi', 'Q7', 125748.79),
    ('Hyundai', 'Palisade', 10184.72),
    ('Chevrolet', 'Colorado', 73755.39),
    ('Toyota', 'Tacoma', 8189.37),
    ('Mazda', 'Mazda6', 132752.53),
    ('Infiniti', 'QX50', 58400.16),
    ('Volvo', 'C40', 77113.55),
    ('Chevrolet', 'Equinox', 116396.4),
    ('Nissan', 'Kicks', 51721.44),
    ('Honda', 'Fit', 75931.95),
    ('Chevrolet', 'Malibu', 98063.4),
    ('Subaru', 'WRX', 85177.91),
    ('Porsche', '718 Boxster', 142380.49),
    ('Lexus', 'LS', 97794.02),
    ('Subaru', 'Crosstrek', 39890.07),
    ('Porsche', 'Taycan', 12103.8),
    ('Acura', 'TSX', 40949.93),
    ('GMC', 'Envoy', 22182.75),
    ('Chevrolet', 'Traverse', 140046.87),
    ('Land Rover', 'Defender', 94996.08),
    ('Chevrolet', 'Suburban', 68856.49),
    ('Hyundai', 'Veloster', 13068.84),
    ('Mercedes-Benz', 'C-Class', 115499.62),
    ('Mazda', 'CX-50', 31564.16),
    ('GMC', 'Sierra', 63678.7),
    ('Subaru', 'Outback', 8799.26),
    ('Subaru', 'Forester', 11697.04),
    ('Subaru', 'Crosstrek', 84000.46),
    ('BMW', '5 Series', 134842.62),
    ('Mercedes-Benz', 'S-Class', 40013.38),
    ('Land Rover', 'Defender', 119912.9),
    ('Cadillac', 'CT4', 88338.14),
    ('Buick', 'Regal', 25561.83),
    ('Ford', 'Ranger', 119103.13),
    ('Volkswagen', 'ID.4', 35019.51),
    ('Porsche', 'Panamera', 98206.57),
    ('Kia', 'Seltos', 97528.17),
    ('Acura', 'NSX', 28847.25),
    ('BMW', 'X7', 115599.6),
    ('Jeep', 'Grand Cherokee', 135285.58),
    ('Jeep', 'Grand Cherokee', 47954.59),
    ('Volkswagen', 'Taos', 23169.74),
    ('Mercedes-Benz', 'E-Class', 100914.62),
    ('Land Rover', 'Velar', 121655.46),
    ('Hyundai', 'Palisade', 96763.34),
    ('Volvo', 'S90', 11119.98),
    ('Tesla', 'Roadster', 39896.19),
    ('Subaru', 'Legacy', 125895.27),
    ('Acura', 'MDX', 23844.02),
    ('Audi', 'A6', 121749.14),
    ('Acura', 'TLX', 93984.68),
    ('Acura', 'TLX', 127348.82),
    ('Honda', 'Odyssey', 120583.19),
    ('Volkswagen', 'Arteon', 35752.47),
    ('Kia', 'Carnival', 84061.04),
    ('Volvo', 'XC40', 111780.82),
    ('GMC', 'Envoy', 36108.07),
    ('Kia', 'Seltos', 82448.64),
    ('Lexus', 'IS', 102911.37),
    ('Buick', 'Envision', 39394.83),
    ('Infiniti', 'QX80', 129499.75),
    ('Chevrolet', 'Colorado', 18213.3),
    ('Ford', 'Explorer', 39443.8),
    ('Honda', 'Odyssey', 96751.65),
    ('GMC', 'Canyon', 23859.19),
    ('Mazda', 'CX-5', 108799.08),
    ('Subaru', 'Impreza', 98429.65),
    ('Nissan', 'Altima', 69927.81),
    ('Nissan', 'Maxima', 38070.35),
    ('Audi', 'e-tron', 51287.4),
    ('Acura', 'ILX', 111190.6),
    ('Volvo', 'XC90', 132935.64),
    ('Mercedes-Benz', 'A-Class', 30222.28),
    ('Toyota', 'RAV4', 13116.13),
    ('Mazda', 'CX-5', 121407.24),
    ('Acura', 'RDX', 19011.62),
    ('Tesla', 'Model 3', 142284.23),
    ('Land Rover', 'Discovery', 79839.44),
    ('Mazda', 'CX-50', 131148.44),
    ('Kia', 'EV6', 26386.45),
    ('Land Rover', 'Range Rover', 123286.11),
    ('Jeep', 'Compass', 114236.18),
    ('Ford', 'Mustang', 56232.55),
    ('Volvo', 'XC60', 26990.09),
    ('Subaru', 'BRZ', 62225.96),
    ('Honda', 'CR-V', 138921.02),
    ('Tesla', 'Model Y', 54257.75),
    ('Audi', 'Q7', 46547.59),
    ('Land Rover', 'Evoque', 103179.52),
    ('Buick', 'Envision', 109999.01),
    ('Ford', 'Expedition', 55481.77),
    ('Nissan', 'Kicks', 110535.0),
    ('Toyota', 'Corolla', 18712.27),
    ('GMC', 'Safari', 9993.7),
    ('Chevrolet', 'Equinox', 13007.33),
    ('Acura', 'NSX', 143939.82),
    ('Acura', 'TSX', 102364.11),
    ('Honda', 'Pilot', 97784.01),
    ('Nissan', 'Sentra', 69548.22),
    ('Kia', 'Carnival', 103437.57),
    ('Land Rover', 'Freelander', 21050.72),
    ('Hyundai', 'Santa Fe', 10264.08),
    ('Dodge', 'Durango', 78874.76),
    ('Mazda', 'MX-5 Miata', 129493.8),
    ('Hyundai', 'Kona', 36256.59),
    ('GMC', 'Safari', 12262.95),
    ('Tesla', 'Roadster', 57316.37),
    ('Dodge', 'Charger', 120814.24),
    ('Ford', 'Explorer', 27082.82),
    ('Mazda', 'Mazda3', 88337.06),
    ('Land Rover', 'Velar', 134668.62),
    ('Jeep', 'Compass', 98318.0),
    ('Chevrolet', 'Colorado', 73365.66),
    ('Volkswagen', 'Jetta', 143032.1),
    ('Cadillac', 'CTS', 100525.28),
    ('Kia', 'Seltos', 91830.83),
    ('Land Rover', 'Discovery', 70743.53),
    ('Porsche', 'Taycan', 60266.92),
    ('Dodge', 'Challenger', 143305.14),
    ('Mazda', 'Mazda6', 74334.14),
    ('Lexus', 'LX', 20417.31),
    ('Audi', 'A6', 97031.24),
    ('Porsche', 'Panamera', 115746.39),
    ('Nissan', 'Rogue', 49608.73),
    ('GMC', 'Terrain', 131290.64),
    ('Ford', 'Mustang', 87642.76),
    ('Mercedes-Benz', 'GLC', 134853.07),
    ('Volkswagen', 'Jetta', 77555.96),
    ('Dodge', 'Challenger', 31680.3),
    ('Subaru', 'Legacy', 13298.14),
    ('Nissan', 'Sentra', 71774.21),
    ('Honda', 'Civic', 13552.37),
    ('Volkswagen', 'GTI', 43950.69),
    ('Kia', 'Forte', 55949.25),
    ('Nissan', 'Frontier', 87930.64),
    ('Toyota', 'Tundra', 39303.07),
    ('Jeep', 'Grand Cherokee', 99995.51),
    ('Buick', 'Envision', 8952.42),
    ('Ford', 'Explorer', 46249.2),
    ('Mercedes-Benz', 'C-Class', 62521.16),
    ('Audi', 'Q7', 142028.65),
    ('Ford', 'Expedition', 113648.25),
    ('Mercedes-Benz', 'G-Class', 142125.55),
    ('Dodge', 'Durango', 81591.68),
    ('Honda', 'Fit', 95753.12),
    ('Acura', 'RLX', 79413.37),
    ('Toyota', 'Sienna', 61974.77),
    ('Subaru', 'BRZ', 29113.62),
    ('Infiniti', 'Q70', 76754.68),
    ('Lexus', 'GX', 131193.69),
    ('Kia', 'EV6', 72286.69),
    ('Infiniti', 'QX60', 31266.99),
    ('Tesla', 'Model Y', 38374.53),
    ('Nissan', 'Pathfinder', 87395.8),
    ('Kia', 'Soul', 65994.76),
    ('GMC', 'Yukon', 69703.17),
    ('Acura', 'TSX', 99591.95),
    ('Land Rover', 'Velar', 120876.86),
    ('GMC', 'Terrain', 63070.56),
    ('Honda', 'Ridgeline', 74869.32),
    ('Land Rover', 'Velar', 24668.35),
    ('Buick', 'Envision', 10494.77),
    ('Land Rover', 'Defender', 125581.32),
    ('Dodge', 'Viper', 111802.87),
    ('Infiniti', 'QX80', 77018.06),
    ('Nissan', 'Altima', 134346.05),
    ('Porsche', 'Taycan', 33629.78),
    ('Mazda', 'Mazda3', 60665.33),
    ('Nissan', 'Murano', 77957.55),
    ('Volvo', 'XC90', 86495.12),
    ('Chevrolet', 'Silverado', 96812.06),
    ('Mercedes-Benz', 'S-Class', 38471.66),
    ('GMC', 'Safari', 14258.83),
    ('Buick', 'Envision', 128687.11),
    ('Hyundai', 'Venue', 24400.33),
    ('Subaru', 'Impreza', 33510.98),
    ('Hyundai', 'Venue', 23165.11),
    ('Mazda', 'CX-50', 24175.34),
    ('Infiniti', 'QX50', 22323.72),
    ('Buick', 'Envision', 77697.36),
    ('Buick', 'Envision', 67723.85),
    ('Honda', 'CR-V', 100429.35),
    ('Dodge', 'Durango', 104032.22),
    ('Acura', 'TLX', 85718.36),
    ('Mercedes-Benz', 'GLE', 127591.93),
    ('GMC', 'Canyon', 22404.91),
    ('Mercedes-Benz', 'E-Class', 36988.32),
    ('Tesla', 'Cybertruck', 102155.02),
    ('Land Rover', 'Range Rover', 22187.0),
    ('Volkswagen', 'Tiguan', 36226.58),
    ('Mercedes-Benz', 'C-Class', 26668.8),
    ('Mercedes-Benz', 'A-Class', 62964.06),
    ('Volvo', 'S60', 53979.49),
    ('Toyota', 'Camry', 120897.57),
    ('Lexus', 'LX', 74301.76),
    ('Volkswagen', 'Arteon', 60644.87),
    ('Hyundai', 'Kona', 91260.58),
    ('Lexus', 'LS', 136203.18),
    ('Porsche', 'Panamera', 76447.35),
    ('Hyundai', 'Sonata', 56870.39),
    ('Tesla', 'Roadster', 79621.5),
    ('GMC', 'Envoy', 35827.2),
    ('Kia', 'Forte', 60986.6),
    ('Tesla', 'Roadster', 86966.43),
    ('Cadillac', 'CT4', 127287.57),
    ('Acura', 'MDX', 57666.03),
    ('Land Rover', 'Velar', 114314.24),
    ('Ford', 'Mustang', 21324.97),
    ('Mercedes-Benz', 'CLA', 61016.14),
    ('Kia', 'Forte', 82358.93),
    ('Mercedes-Benz', 'E-Class', 63296.24),
    ('Honda', 'Fit', 97937.61),
    ('Subaru', 'Ascent', 61639.98),
    ('Lexus', 'GX', 128207.83),
    ('Land Rover', 'Evoque', 24181.68),
    ('Toyota', '4Runner', 111576.64),
    ('Nissan', 'Murano', 108060.9),
    ('Ford', 'Ranger', 53632.56),
    ('Mercedes-Benz', 'GLE', 114490.29),
    ('Subaru', 'Ascent', 29285.99),
    ('Kia', 'Sportage', 141562.63),
    ('Lexus', 'ES', 21944.54),
    ('Ford', 'Expedition', 133096.91),
    ('Volkswagen', 'Taos', 73797.41),
    ('Buick', 'Envision', 122891.14),
    ('BMW', '5 Series', 37219.39),
    ('Land Rover', 'Range Rover', 27946.21),
    ('Ford', 'Ranger', 33292.1),
    ('Mazda', 'CX-5', 50095.77),
    ('Kia', 'K5', 43570.6),
    ('Chevrolet', 'Traverse', 84768.54),
    ('Lexus', 'LX', 112257.04),
    ('Cadillac', 'ATS', 144222.81),
    ('Cadillac', 'XT5', 24900.09),
    ('Acura', 'NSX', 32321.61),
    ('Tesla', 'Roadster', 90440.15),
    ('Nissan', 'Altima', 109004.55),
    ('Land Rover', 'Range Rover', 138960.95),
    ('Dodge', 'Challenger', 84519.24),
    ('Porsche', 'Cayenne', 130169.73),
    ('Dodge', 'Ram 1500', 94291.18),
    ('Volkswagen', 'GTI', 37241.0),
    ('Mazda', 'CX-50', 92563.66),
    ('Audi', 'Q7', 115600.53),
    ('Volkswagen', 'ID.4', 48515.67),
    ('Audi', 'A3', 134242.59),
    ('BMW', 'Z4', 66685.77),
    ('GMC', 'Terrain', 81935.99),
    ('Lexus', 'LX', 82076.16),
    ('Dodge', 'Charger', 94460.33),
    ('Kia', 'Sorento', 72939.8),
    ('Mercedes-Benz', 'CLA', 38343.95),
    ('Buick', 'Verano', 134455.59),
    ('BMW', 'M3', 8367.13),
    ('Dodge', 'Durango', 116173.26),
    ('Cadillac', 'XT5', 51706.35),
    ('Mazda', 'CX-50', 29241.9),
    ('Jeep', 'Renegade', 81248.1),
    ('GMC', 'Safari', 24390.13),
    ('Buick', 'Envision', 138077.68),
    ('Ford', 'F-150', 124916.75),
    ('Hyundai', 'Venue', 142535.73),
    ('Volkswagen', 'Tiguan', 58431.17),
    ('Infiniti', 'Q50', 143266.31),
    ('Land Rover', 'Velar', 67283.09),
    ('Mercedes-Benz', 'AMG GT', 114485.41),
    ('Volvo', 'XC40', 41681.44),
    ('Volvo', 'XC60', 46362.29),
    ('Toyota', 'Camry', 11641.65),
    ('Dodge', 'Durango', 30339.69),
    ('Subaru', 'WRX', 114295.89),
    ('Hyundai', 'Palisade', 97496.84),
    ('Ford', 'Bronco', 26757.22),
    ('Hyundai', 'Tucson', 41566.39),
    ('Honda', 'Fit', 131119.75),
    ('Porsche', '718 Boxster', 127126.89),
    ('Lexus', 'NX', 120120.38),
    ('Toyota', 'Corolla', 17348.42),
    ('Infiniti', 'Q60', 8923.14),
    ('Buick', 'Enclave', 41260.37),
    ('Land Rover', 'Freelander', 29135.07),
    ('Nissan', 'Kicks', 70245.57),
    ('Jeep', 'Cherokee', 92007.17),
    ('Volvo', 'XC90', 43838.11),
    ('Nissan', 'Maxima', 80073.36),
    ('Cadillac', 'CT5', 45683.8),
    ('Infiniti', 'QX80', 62190.95),
    ('Volkswagen', 'Taos', 112686.93),
    ('Mazda', 'Mazda3', 53174.23),
    ('Jeep', 'Cherokee', 41647.18),
    ('Cadillac', 'ATS', 32851.58),
    ('Infiniti', 'Q60', 143021.5),
    ('Acura', 'TSX', 131395.85),
    ('Mazda', 'Mazda6', 36525.44),
    ('Land Rover', 'Evoque', 123737.13),
    ('Honda', 'Civic', 111729.82),
    ('Volkswagen', 'ID.4', 139696.89),
    ('Buick', 'Encore', 87082.35),
    ('Lexus', 'LS', 118353.63),
    ('Jeep', 'Renegade', 83743.77),
    ('Buick', 'Encore', 66097.64),
    ('Subaru', 'Ascent', 95102.12),
    ('Hyundai', 'Kona', 132935.81),
    ('Porsche', 'Panamera', 67968.72),
    ('Mazda', 'Mazda6', 124004.28),
    ('Porsche', 'Macan', 9558.44),
    ('Hyundai', 'Venue', 12780.54),
    ('Tesla', 'Roadster', 70184.62),
    ('Porsche', '911', 114214.91),
    ('Lexus', 'ES', 17437.11),
    ('Porsche', '718 Cayman', 98159.23),
    ('Land Rover', 'Evoque', 76830.54),
    ('Audi', 'e-tron', 82436.79),
    ('Mercedes-Benz', 'S-Class', 62014.33),
    ('Lexus', 'LX', 45471.74),
    ('Jeep', 'Compass', 90930.64),
    ('Land Rover', 'Evoque', 109483.19),
    ('Buick', 'LaCrosse', 96130.44),
    ('Acura', 'MDX', 83025.19),
    ('Honda', 'Accord', 10428.02),
    ('Cadillac', 'CT4', 21204.58),
    ('Volvo', 'XC60', 78545.45),
    ('Land Rover', 'Evoque', 137929.65),
    ('Audi', 'e-tron', 99714.16),
    ('Buick', 'Verano', 19518.62),
    ('Kia', 'Forte', 13977.56),
    ('Hyundai', 'Kona', 108785.03),
    ('Acura', 'ILX', 9077.24),
    ('Porsche', '718 Boxster', 128909.74),
    ('Mercedes-Benz', 'E-Class', 111905.08),
    ('Volvo', 'V90', 124251.67),
    ('Kia', 'Telluride', 46397.6),
    ('Subaru', 'Crosstrek', 93048.3),
    ('Infiniti', 'Q70', 38010.08),
    ('Cadillac', 'XT4', 131324.92),
    ('Acura', 'TLX', 99505.46),
    ('Volvo', 'C40', 124441.86),
    ('Cadillac', 'CT5', 12020.7),
    ('Acura', 'ILX', 97688.14),
    ('GMC', 'Canyon', 11069.39),
    ('Acura', 'TLX', 8483.74),
    ('Dodge', 'Viper', 52553.53),
    ('Nissan', 'Pathfinder', 17119.26),
    ('Buick', 'Encore', 17088.66),
    ('Acura', 'NSX', 51888.78),
    ('Hyundai', 'Palisade', 56969.22),
    ('Porsche', '718 Boxster', 82878.7),
    ('BMW', 'X7', 94741.85),
    ('Nissan', 'Murano', 125173.35),
    ('Toyota', 'Sienna', 17749.56),
    ('Audi', 'e-tron', 56516.82),
    ('Ford', 'Mustang', 106885.22),
    ('Jeep', 'Cherokee', 48921.44),
    ('Acura', 'RLX', 103289.02),
    ('Dodge', 'Charger', 123001.94),
    ('Infiniti', 'G37', 65133.75),
    ('Cadillac', 'XT4', 120199.69),
    ('Cadillac', 'Escalade', 24804.34),
    ('Lexus', 'ES', 25968.87),
    ('Chevrolet', 'Equinox', 64608.81),
    ('Land Rover', 'Evoque', 46284.69);

-- =========================================================
-- Assign cars to ~600 persons (one-to-one via UNIQUE car_id)
-- =========================================================
UPDATE person SET car_id = 1 WHERE id = 344;
UPDATE person SET car_id = 2 WHERE id = 786;
UPDATE person SET car_id = 3 WHERE id = 988;
UPDATE person SET car_id = 4 WHERE id = 779;
UPDATE person SET car_id = 5 WHERE id = 120;
UPDATE person SET car_id = 6 WHERE id = 337;
UPDATE person SET car_id = 7 WHERE id = 758;
UPDATE person SET car_id = 8 WHERE id = 574;
UPDATE person SET car_id = 9 WHERE id = 514;
UPDATE person SET car_id = 10 WHERE id = 162;
UPDATE person SET car_id = 11 WHERE id = 172;
UPDATE person SET car_id = 12 WHERE id = 325;
UPDATE person SET car_id = 13 WHERE id = 424;
UPDATE person SET car_id = 14 WHERE id = 217;
UPDATE person SET car_id = 15 WHERE id = 681;
UPDATE person SET car_id = 16 WHERE id = 540;
UPDATE person SET car_id = 17 WHERE id = 759;
UPDATE person SET car_id = 18 WHERE id = 45;
UPDATE person SET car_id = 19 WHERE id = 539;
UPDATE person SET car_id = 20 WHERE id = 588;
UPDATE person SET car_id = 21 WHERE id = 933;
UPDATE person SET car_id = 22 WHERE id = 63;
UPDATE person SET car_id = 23 WHERE id = 773;
UPDATE person SET car_id = 24 WHERE id = 336;
UPDATE person SET car_id = 25 WHERE id = 923;
UPDATE person SET car_id = 26 WHERE id = 174;
UPDATE person SET car_id = 27 WHERE id = 450;
UPDATE person SET car_id = 28 WHERE id = 82;
UPDATE person SET car_id = 29 WHERE id = 567;
UPDATE person SET car_id = 30 WHERE id = 590;
UPDATE person SET car_id = 31 WHERE id = 647;
UPDATE person SET car_id = 32 WHERE id = 846;
UPDATE person SET car_id = 33 WHERE id = 520;
UPDATE person SET car_id = 34 WHERE id = 88;
UPDATE person SET car_id = 35 WHERE id = 483;
UPDATE person SET car_id = 36 WHERE id = 15;
UPDATE person SET car_id = 37 WHERE id = 710;
UPDATE person SET car_id = 38 WHERE id = 85;
UPDATE person SET car_id = 39 WHERE id = 363;
UPDATE person SET car_id = 40 WHERE id = 621;
UPDATE person SET car_id = 41 WHERE id = 345;
UPDATE person SET car_id = 42 WHERE id = 402;
UPDATE person SET car_id = 43 WHERE id = 177;
UPDATE person SET car_id = 44 WHERE id = 657;
UPDATE person SET car_id = 45 WHERE id = 347;
UPDATE person SET car_id = 46 WHERE id = 958;
UPDATE person SET car_id = 47 WHERE id = 125;
UPDATE person SET car_id = 48 WHERE id = 343;
UPDATE person SET car_id = 49 WHERE id = 384;
UPDATE person SET car_id = 50 WHERE id = 825;
UPDATE person SET car_id = 51 WHERE id = 275;
UPDATE person SET car_id = 52 WHERE id = 852;
UPDATE person SET car_id = 53 WHERE id = 239;
UPDATE person SET car_id = 54 WHERE id = 579;
UPDATE person SET car_id = 55 WHERE id = 980;
UPDATE person SET car_id = 56 WHERE id = 642;
UPDATE person SET car_id = 57 WHERE id = 528;
UPDATE person SET car_id = 58 WHERE id = 119;
UPDATE person SET car_id = 59 WHERE id = 543;
UPDATE person SET car_id = 60 WHERE id = 95;
UPDATE person SET car_id = 61 WHERE id = 376;
UPDATE person SET car_id = 62 WHERE id = 910;
UPDATE person SET car_id = 63 WHERE id = 262;
UPDATE person SET car_id = 64 WHERE id = 21;
UPDATE person SET car_id = 65 WHERE id = 487;
UPDATE person SET car_id = 66 WHERE id = 266;
UPDATE person SET car_id = 67 WHERE id = 790;
UPDATE person SET car_id = 68 WHERE id = 919;
UPDATE person SET car_id = 69 WHERE id = 538;
UPDATE person SET car_id = 70 WHERE id = 60;
UPDATE person SET car_id = 71 WHERE id = 284;
UPDATE person SET car_id = 72 WHERE id = 135;
UPDATE person SET car_id = 73 WHERE id = 569;
UPDATE person SET car_id = 74 WHERE id = 57;
UPDATE person SET car_id = 75 WHERE id = 972;
UPDATE person SET car_id = 76 WHERE id = 562;
UPDATE person SET car_id = 77 WHERE id = 394;
UPDATE person SET car_id = 78 WHERE id = 659;
UPDATE person SET car_id = 79 WHERE id = 975;
UPDATE person SET car_id = 80 WHERE id = 615;
UPDATE person SET car_id = 81 WHERE id = 608;
UPDATE person SET car_id = 82 WHERE id = 464;
UPDATE person SET car_id = 83 WHERE id = 140;
UPDATE person SET car_id = 84 WHERE id = 708;
UPDATE person SET car_id = 85 WHERE id = 586;
UPDATE person SET car_id = 86 WHERE id = 339;
UPDATE person SET car_id = 87 WHERE id = 661;
UPDATE person SET car_id = 88 WHERE id = 145;
UPDATE person SET car_id = 89 WHERE id = 731;
UPDATE person SET car_id = 90 WHERE id = 853;
UPDATE person SET car_id = 91 WHERE id = 811;
UPDATE person SET car_id = 92 WHERE id = 550;
UPDATE person SET car_id = 93 WHERE id = 928;
UPDATE person SET car_id = 94 WHERE id = 247;
UPDATE person SET car_id = 95 WHERE id = 578;
UPDATE person SET car_id = 96 WHERE id = 512;
UPDATE person SET car_id = 97 WHERE id = 643;
UPDATE person SET car_id = 98 WHERE id = 465;
UPDATE person SET car_id = 99 WHERE id = 886;
UPDATE person SET car_id = 100 WHERE id = 604;
UPDATE person SET car_id = 101 WHERE id = 380;
UPDATE person SET car_id = 102 WHERE id = 310;
UPDATE person SET car_id = 103 WHERE id = 404;
UPDATE person SET car_id = 104 WHERE id = 714;
UPDATE person SET car_id = 105 WHERE id = 664;
UPDATE person SET car_id = 106 WHERE id = 267;
UPDATE person SET car_id = 107 WHERE id = 892;
UPDATE person SET car_id = 108 WHERE id = 499;
UPDATE person SET car_id = 109 WHERE id = 953;
UPDATE person SET car_id = 110 WHERE id = 756;
UPDATE person SET car_id = 111 WHERE id = 75;
UPDATE person SET car_id = 112 WHERE id = 326;
UPDATE person SET car_id = 113 WHERE id = 553;
UPDATE person SET car_id = 114 WHERE id = 968;
UPDATE person SET car_id = 115 WHERE id = 939;
UPDATE person SET car_id = 116 WHERE id = 231;
UPDATE person SET car_id = 117 WHERE id = 834;
UPDATE person SET car_id = 118 WHERE id = 248;
UPDATE person SET car_id = 119 WHERE id = 128;
UPDATE person SET car_id = 120 WHERE id = 446;
UPDATE person SET car_id = 121 WHERE id = 226;
UPDATE person SET car_id = 122 WHERE id = 191;
UPDATE person SET car_id = 123 WHERE id = 218;
UPDATE person SET car_id = 124 WHERE id = 324;
UPDATE person SET car_id = 125 WHERE id = 849;
UPDATE person SET car_id = 126 WHERE id = 80;
UPDATE person SET car_id = 127 WHERE id = 117;
UPDATE person SET car_id = 128 WHERE id = 907;
UPDATE person SET car_id = 129 WHERE id = 527;
UPDATE person SET car_id = 130 WHERE id = 213;
UPDATE person SET car_id = 131 WHERE id = 342;
UPDATE person SET car_id = 132 WHERE id = 241;
UPDATE person SET car_id = 133 WHERE id = 870;
UPDATE person SET car_id = 134 WHERE id = 626;
UPDATE person SET car_id = 135 WHERE id = 328;
UPDATE person SET car_id = 136 WHERE id = 202;
UPDATE person SET car_id = 137 WHERE id = 725;
UPDATE person SET car_id = 138 WHERE id = 331;
UPDATE person SET car_id = 139 WHERE id = 327;
UPDATE person SET car_id = 140 WHERE id = 682;
UPDATE person SET car_id = 141 WHERE id = 50;
UPDATE person SET car_id = 142 WHERE id = 805;
UPDATE person SET car_id = 143 WHERE id = 525;
UPDATE person SET car_id = 144 WHERE id = 335;
UPDATE person SET car_id = 145 WHERE id = 592;
UPDATE person SET car_id = 146 WHERE id = 229;
UPDATE person SET car_id = 147 WHERE id = 165;
UPDATE person SET car_id = 148 WHERE id = 306;
UPDATE person SET car_id = 149 WHERE id = 90;
UPDATE person SET car_id = 150 WHERE id = 809;
UPDATE person SET car_id = 151 WHERE id = 137;
UPDATE person SET car_id = 152 WHERE id = 549;
UPDATE person SET car_id = 153 WHERE id = 8;
UPDATE person SET car_id = 154 WHERE id = 619;
UPDATE person SET car_id = 155 WHERE id = 479;
UPDATE person SET car_id = 156 WHERE id = 748;
UPDATE person SET car_id = 157 WHERE id = 970;
UPDATE person SET car_id = 158 WHERE id = 178;
UPDATE person SET car_id = 159 WHERE id = 367;
UPDATE person SET car_id = 160 WHERE id = 491;
UPDATE person SET car_id = 161 WHERE id = 873;
UPDATE person SET car_id = 162 WHERE id = 156;
UPDATE person SET car_id = 163 WHERE id = 96;
UPDATE person SET car_id = 164 WHERE id = 313;
UPDATE person SET car_id = 165 WHERE id = 863;
UPDATE person SET car_id = 166 WHERE id = 532;
UPDATE person SET car_id = 167 WHERE id = 330;
UPDATE person SET car_id = 168 WHERE id = 158;
UPDATE person SET car_id = 169 WHERE id = 5;
UPDATE person SET car_id = 170 WHERE id = 252;
UPDATE person SET car_id = 171 WHERE id = 250;
UPDATE person SET car_id = 172 WHERE id = 898;
UPDATE person SET car_id = 173 WHERE id = 494;
UPDATE person SET car_id = 174 WHERE id = 486;
UPDATE person SET car_id = 175 WHERE id = 259;
UPDATE person SET car_id = 176 WHERE id = 732;
UPDATE person SET car_id = 177 WHERE id = 374;
UPDATE person SET car_id = 178 WHERE id = 293;
UPDATE person SET car_id = 179 WHERE id = 134;
UPDATE person SET car_id = 180 WHERE id = 300;
UPDATE person SET car_id = 181 WHERE id = 613;
UPDATE person SET car_id = 182 WHERE id = 979;
UPDATE person SET car_id = 183 WHERE id = 441;
UPDATE person SET car_id = 184 WHERE id = 157;
UPDATE person SET car_id = 185 WHERE id = 932;
UPDATE person SET car_id = 186 WHERE id = 62;
UPDATE person SET car_id = 187 WHERE id = 428;
UPDATE person SET car_id = 188 WHERE id = 607;
UPDATE person SET car_id = 189 WHERE id = 422;
UPDATE person SET car_id = 190 WHERE id = 206;
UPDATE person SET car_id = 191 WHERE id = 150;
UPDATE person SET car_id = 192 WHERE id = 843;
UPDATE person SET car_id = 193 WHERE id = 421;
UPDATE person SET car_id = 194 WHERE id = 667;
UPDATE person SET car_id = 195 WHERE id = 530;
UPDATE person SET car_id = 196 WHERE id = 812;
UPDATE person SET car_id = 197 WHERE id = 510;
UPDATE person SET car_id = 198 WHERE id = 211;
UPDATE person SET car_id = 199 WHERE id = 760;
UPDATE person SET car_id = 200 WHERE id = 911;
UPDATE person SET car_id = 201 WHERE id = 537;
UPDATE person SET car_id = 202 WHERE id = 171;
UPDATE person SET car_id = 203 WHERE id = 862;
UPDATE person SET car_id = 204 WHERE id = 874;
UPDATE person SET car_id = 205 WHERE id = 448;
UPDATE person SET car_id = 206 WHERE id = 379;
UPDATE person SET car_id = 207 WHERE id = 877;
UPDATE person SET car_id = 208 WHERE id = 294;
UPDATE person SET car_id = 209 WHERE id = 785;
UPDATE person SET car_id = 210 WHERE id = 175;
UPDATE person SET car_id = 211 WHERE id = 160;
UPDATE person SET car_id = 212 WHERE id = 452;
UPDATE person SET car_id = 213 WHERE id = 924;
UPDATE person SET car_id = 214 WHERE id = 868;
UPDATE person SET car_id = 215 WHERE id = 94;
UPDATE person SET car_id = 216 WHERE id = 283;
UPDATE person SET car_id = 217 WHERE id = 600;
UPDATE person SET car_id = 218 WHERE id = 828;
UPDATE person SET car_id = 219 WHERE id = 348;
UPDATE person SET car_id = 220 WHERE id = 819;
UPDATE person SET car_id = 221 WHERE id = 129;
UPDATE person SET car_id = 222 WHERE id = 355;
UPDATE person SET car_id = 223 WHERE id = 73;
UPDATE person SET car_id = 224 WHERE id = 555;
UPDATE person SET car_id = 225 WHERE id = 599;
UPDATE person SET car_id = 226 WHERE id = 478;
UPDATE person SET car_id = 227 WHERE id = 584;
UPDATE person SET car_id = 228 WHERE id = 47;
UPDATE person SET car_id = 229 WHERE id = 232;
UPDATE person SET car_id = 230 WHERE id = 490;
UPDATE person SET car_id = 231 WHERE id = 64;
UPDATE person SET car_id = 232 WHERE id = 32;
UPDATE person SET car_id = 233 WHERE id = 989;
UPDATE person SET car_id = 234 WHERE id = 954;
UPDATE person SET car_id = 235 WHERE id = 630;
UPDATE person SET car_id = 236 WHERE id = 799;
UPDATE person SET car_id = 237 WHERE id = 169;
UPDATE person SET car_id = 238 WHERE id = 721;
UPDATE person SET car_id = 239 WHERE id = 417;
UPDATE person SET car_id = 240 WHERE id = 389;
UPDATE person SET car_id = 241 WHERE id = 410;
UPDATE person SET car_id = 242 WHERE id = 53;
UPDATE person SET car_id = 243 WHERE id = 123;
UPDATE person SET car_id = 244 WHERE id = 445;
UPDATE person SET car_id = 245 WHERE id = 361;
UPDATE person SET car_id = 246 WHERE id = 54;
UPDATE person SET car_id = 247 WHERE id = 170;
UPDATE person SET car_id = 248 WHERE id = 904;
UPDATE person SET car_id = 249 WHERE id = 702;
UPDATE person SET car_id = 250 WHERE id = 146;
UPDATE person SET car_id = 251 WHERE id = 832;
UPDATE person SET car_id = 252 WHERE id = 993;
UPDATE person SET car_id = 253 WHERE id = 671;
UPDATE person SET car_id = 254 WHERE id = 533;
UPDATE person SET car_id = 255 WHERE id = 401;
UPDATE person SET car_id = 256 WHERE id = 25;
UPDATE person SET car_id = 257 WHERE id = 973;
UPDATE person SET car_id = 258 WHERE id = 864;
UPDATE person SET car_id = 259 WHERE id = 278;
UPDATE person SET car_id = 260 WHERE id = 969;
UPDATE person SET car_id = 261 WHERE id = 383;
UPDATE person SET car_id = 262 WHERE id = 971;
UPDATE person SET car_id = 263 WHERE id = 949;
UPDATE person SET car_id = 264 WHERE id = 223;
UPDATE person SET car_id = 265 WHERE id = 912;
UPDATE person SET car_id = 266 WHERE id = 890;
UPDATE person SET car_id = 267 WHERE id = 126;
UPDATE person SET car_id = 268 WHERE id = 185;
UPDATE person SET car_id = 269 WHERE id = 695;
UPDATE person SET car_id = 270 WHERE id = 983;
UPDATE person SET car_id = 271 WHERE id = 470;
UPDATE person SET car_id = 272 WHERE id = 850;
UPDATE person SET car_id = 273 WHERE id = 518;
UPDATE person SET car_id = 274 WHERE id = 709;
UPDATE person SET car_id = 275 WHERE id = 147;
UPDATE person SET car_id = 276 WHERE id = 822;
UPDATE person SET car_id = 277 WHERE id = 115;
UPDATE person SET car_id = 278 WHERE id = 176;
UPDATE person SET car_id = 279 WHERE id = 728;
UPDATE person SET car_id = 280 WHERE id = 180;
UPDATE person SET car_id = 281 WHERE id = 955;
UPDATE person SET car_id = 282 WHERE id = 842;
UPDATE person SET car_id = 283 WHERE id = 519;
UPDATE person SET car_id = 284 WHERE id = 371;
UPDATE person SET car_id = 285 WHERE id = 848;
UPDATE person SET car_id = 286 WHERE id = 680;
UPDATE person SET car_id = 287 WHERE id = 71;
UPDATE person SET car_id = 288 WHERE id = 467;
UPDATE person SET car_id = 289 WHERE id = 132;
UPDATE person SET car_id = 290 WHERE id = 10;
UPDATE person SET car_id = 291 WHERE id = 729;
UPDATE person SET car_id = 292 WHERE id = 793;
UPDATE person SET car_id = 293 WHERE id = 741;
UPDATE person SET car_id = 294 WHERE id = 663;
UPDATE person SET car_id = 295 WHERE id = 769;
UPDATE person SET car_id = 296 WHERE id = 12;
UPDATE person SET car_id = 297 WHERE id = 931;
UPDATE person SET car_id = 298 WHERE id = 323;
UPDATE person SET car_id = 299 WHERE id = 181;
UPDATE person SET car_id = 300 WHERE id = 24;
UPDATE person SET car_id = 301 WHERE id = 390;
UPDATE person SET car_id = 302 WHERE id = 541;
UPDATE person SET car_id = 303 WHERE id = 105;
UPDATE person SET car_id = 304 WHERE id = 497;
UPDATE person SET car_id = 305 WHERE id = 381;
UPDATE person SET car_id = 306 WHERE id = 282;
UPDATE person SET car_id = 307 WHERE id = 683;
UPDATE person SET car_id = 308 WHERE id = 477;
UPDATE person SET car_id = 309 WHERE id = 938;
UPDATE person SET car_id = 310 WHERE id = 733;
UPDATE person SET car_id = 311 WHERE id = 386;
UPDATE person SET car_id = 312 WHERE id = 620;
UPDATE person SET car_id = 313 WHERE id = 315;
UPDATE person SET car_id = 314 WHERE id = 544;
UPDATE person SET car_id = 315 WHERE id = 722;
UPDATE person SET car_id = 316 WHERE id = 690;
UPDATE person SET car_id = 317 WHERE id = 631;
UPDATE person SET car_id = 318 WHERE id = 558;
UPDATE person SET car_id = 319 WHERE id = 58;
UPDATE person SET car_id = 320 WHERE id = 770;
UPDATE person SET car_id = 321 WHERE id = 72;
UPDATE person SET car_id = 322 WHERE id = 322;
UPDATE person SET car_id = 323 WHERE id = 155;
UPDATE person SET car_id = 324 WHERE id = 453;
UPDATE person SET car_id = 325 WHERE id = 400;
UPDATE person SET car_id = 326 WHERE id = 370;
UPDATE person SET car_id = 327 WHERE id = 916;
UPDATE person SET car_id = 328 WHERE id = 959;
UPDATE person SET car_id = 329 WHERE id = 813;
UPDATE person SET car_id = 330 WHERE id = 961;
UPDATE person SET car_id = 331 WHERE id = 551;
UPDATE person SET car_id = 332 WHERE id = 199;
UPDATE person SET car_id = 333 WHERE id = 821;
UPDATE person SET car_id = 334 WHERE id = 830;
UPDATE person SET car_id = 335 WHERE id = 366;
UPDATE person SET car_id = 336 WHERE id = 800;
UPDATE person SET car_id = 337 WHERE id = 436;
UPDATE person SET car_id = 338 WHERE id = 154;
UPDATE person SET car_id = 339 WHERE id = 950;
UPDATE person SET car_id = 340 WHERE id = 804;
UPDATE person SET car_id = 341 WHERE id = 4;
UPDATE person SET car_id = 342 WHERE id = 70;
UPDATE person SET car_id = 343 WHERE id = 887;
UPDATE person SET car_id = 344 WHERE id = 616;
UPDATE person SET car_id = 345 WHERE id = 92;
UPDATE person SET car_id = 346 WHERE id = 236;
UPDATE person SET car_id = 347 WHERE id = 320;
UPDATE person SET car_id = 348 WHERE id = 188;
UPDATE person SET car_id = 349 WHERE id = 639;
UPDATE person SET car_id = 350 WHERE id = 352;
UPDATE person SET car_id = 351 WHERE id = 670;
UPDATE person SET car_id = 352 WHERE id = 851;
UPDATE person SET car_id = 353 WHERE id = 654;
UPDATE person SET car_id = 354 WHERE id = 810;
UPDATE person SET car_id = 355 WHERE id = 492;
UPDATE person SET car_id = 356 WHERE id = 103;
UPDATE person SET car_id = 357 WHERE id = 727;
UPDATE person SET car_id = 358 WHERE id = 263;
UPDATE person SET car_id = 359 WHERE id = 388;
UPDATE person SET car_id = 360 WHERE id = 994;
UPDATE person SET car_id = 361 WHERE id = 393;
UPDATE person SET car_id = 362 WHERE id = 521;
UPDATE person SET car_id = 363 WHERE id = 698;
UPDATE person SET car_id = 364 WHERE id = 237;
UPDATE person SET car_id = 365 WHERE id = 583;
UPDATE person SET car_id = 366 WHERE id = 372;
UPDATE person SET car_id = 367 WHERE id = 114;
UPDATE person SET car_id = 368 WHERE id = 753;
UPDATE person SET car_id = 369 WHERE id = 409;
UPDATE person SET car_id = 370 WHERE id = 618;
UPDATE person SET car_id = 371 WHERE id = 17;
UPDATE person SET car_id = 372 WHERE id = 111;
UPDATE person SET car_id = 373 WHERE id = 279;
UPDATE person SET car_id = 374 WHERE id = 362;
UPDATE person SET car_id = 375 WHERE id = 496;
UPDATE person SET car_id = 376 WHERE id = 205;
UPDATE person SET car_id = 377 WHERE id = 511;
UPDATE person SET car_id = 378 WHERE id = 500;
UPDATE person SET car_id = 379 WHERE id = 761;
UPDATE person SET car_id = 380 WHERE id = 406;
UPDATE person SET car_id = 381 WHERE id = 594;
UPDATE person SET car_id = 382 WHERE id = 93;
UPDATE person SET car_id = 383 WHERE id = 179;
UPDATE person SET car_id = 384 WHERE id = 139;
UPDATE person SET car_id = 385 WHERE id = 547;
UPDATE person SET car_id = 386 WHERE id = 964;
UPDATE person SET car_id = 387 WHERE id = 474;
UPDATE person SET car_id = 388 WHERE id = 546;
UPDATE person SET car_id = 389 WHERE id = 108;
UPDATE person SET car_id = 390 WHERE id = 481;
UPDATE person SET car_id = 391 WHERE id = 665;
UPDATE person SET car_id = 392 WHERE id = 102;
UPDATE person SET car_id = 393 WHERE id = 391;
UPDATE person SET car_id = 394 WHERE id = 927;
UPDATE person SET car_id = 395 WHERE id = 844;
UPDATE person SET car_id = 396 WHERE id = 997;
UPDATE person SET car_id = 397 WHERE id = 459;
UPDATE person SET car_id = 398 WHERE id = 227;
UPDATE person SET car_id = 399 WHERE id = 909;
UPDATE person SET car_id = 400 WHERE id = 634;
UPDATE person SET car_id = 401 WHERE id = 556;
UPDATE person SET car_id = 402 WHERE id = 906;
UPDATE person SET car_id = 403 WHERE id = 617;
UPDATE person SET car_id = 404 WHERE id = 985;
UPDATE person SET car_id = 405 WHERE id = 872;
UPDATE person SET car_id = 406 WHERE id = 816;
UPDATE person SET car_id = 407 WHERE id = 295;
UPDATE person SET car_id = 408 WHERE id = 798;
UPDATE person SET car_id = 409 WHERE id = 701;
UPDATE person SET car_id = 410 WHERE id = 597;
UPDATE person SET car_id = 411 WHERE id = 423;
UPDATE person SET car_id = 412 WHERE id = 489;
UPDATE person SET car_id = 413 WHERE id = 981;
UPDATE person SET car_id = 414 WHERE id = 432;
UPDATE person SET car_id = 415 WHERE id = 930;
UPDATE person SET car_id = 416 WHERE id = 207;
UPDATE person SET car_id = 417 WHERE id = 240;
UPDATE person SET car_id = 418 WHERE id = 576;
UPDATE person SET car_id = 419 WHERE id = 807;
UPDATE person SET car_id = 420 WHERE id = 136;
UPDATE person SET car_id = 421 WHERE id = 308;
UPDATE person SET car_id = 422 WHERE id = 144;
UPDATE person SET car_id = 423 WHERE id = 632;
UPDATE person SET car_id = 424 WHERE id = 168;
UPDATE person SET car_id = 425 WHERE id = 651;
UPDATE person SET car_id = 426 WHERE id = 332;
UPDATE person SET car_id = 427 WHERE id = 649;
UPDATE person SET car_id = 428 WHERE id = 845;
UPDATE person SET car_id = 429 WHERE id = 7;
UPDATE person SET car_id = 430 WHERE id = 435;
UPDATE person SET car_id = 431 WHERE id = 744;
UPDATE person SET car_id = 432 WHERE id = 869;
UPDATE person SET car_id = 433 WHERE id = 716;
UPDATE person SET car_id = 434 WHERE id = 297;
UPDATE person SET car_id = 435 WHERE id = 908;
UPDATE person SET car_id = 436 WHERE id = 437;
UPDATE person SET car_id = 437 WHERE id = 426;
UPDATE person SET car_id = 438 WHERE id = 660;
UPDATE person SET car_id = 439 WHERE id = 635;
UPDATE person SET car_id = 440 WHERE id = 668;
UPDATE person SET car_id = 441 WHERE id = 30;
UPDATE person SET car_id = 442 WHERE id = 609;
UPDATE person SET car_id = 443 WHERE id = 253;
UPDATE person SET car_id = 444 WHERE id = 78;
UPDATE person SET car_id = 445 WHERE id = 392;
UPDATE person SET car_id = 446 WHERE id = 351;
UPDATE person SET car_id = 447 WHERE id = 795;
UPDATE person SET car_id = 448 WHERE id = 357;
UPDATE person SET car_id = 449 WHERE id = 69;
UPDATE person SET car_id = 450 WHERE id = 776;
UPDATE person SET car_id = 451 WHERE id = 991;
UPDATE person SET car_id = 452 WHERE id = 349;
UPDATE person SET car_id = 453 WHERE id = 222;
UPDATE person SET car_id = 454 WHERE id = 305;
UPDATE person SET car_id = 455 WHERE id = 974;
UPDATE person SET car_id = 456 WHERE id = 148;
UPDATE person SET car_id = 457 WHERE id = 963;
UPDATE person SET car_id = 458 WHERE id = 548;
UPDATE person SET car_id = 459 WHERE id = 434;
UPDATE person SET car_id = 460 WHERE id = 937;
UPDATE person SET car_id = 461 WHERE id = 166;
UPDATE person SET car_id = 462 WHERE id = 614;
UPDATE person SET car_id = 463 WHERE id = 601;
UPDATE person SET car_id = 464 WHERE id = 41;
UPDATE person SET car_id = 465 WHERE id = 633;
UPDATE person SET car_id = 466 WHERE id = 482;
UPDATE person SET car_id = 467 WHERE id = 531;
UPDATE person SET car_id = 468 WHERE id = 998;
UPDATE person SET car_id = 469 WHERE id = 730;
UPDATE person SET car_id = 470 WHERE id = 739;
UPDATE person SET car_id = 471 WHERE id = 585;
UPDATE person SET car_id = 472 WHERE id = 894;
UPDATE person SET car_id = 473 WHERE id = 737;
UPDATE person SET car_id = 474 WHERE id = 216;
UPDATE person SET car_id = 475 WHERE id = 373;
UPDATE person SET car_id = 476 WHERE id = 638;
UPDATE person SET car_id = 477 WHERE id = 740;
UPDATE person SET car_id = 478 WHERE id = 35;
UPDATE person SET car_id = 479 WHERE id = 676;
UPDATE person SET car_id = 480 WHERE id = 623;
UPDATE person SET car_id = 481 WHERE id = 603;
UPDATE person SET car_id = 482 WHERE id = 18;
UPDATE person SET car_id = 483 WHERE id = 138;
UPDATE person SET car_id = 484 WHERE id = 451;
UPDATE person SET car_id = 485 WHERE id = 524;
UPDATE person SET car_id = 486 WHERE id = 580;
UPDATE person SET car_id = 487 WHERE id = 429;
UPDATE person SET car_id = 488 WHERE id = 946;
UPDATE person SET car_id = 489 WHERE id = 407;
UPDATE person SET car_id = 490 WHERE id = 734;
UPDATE person SET car_id = 491 WHERE id = 992;
UPDATE person SET car_id = 492 WHERE id = 133;
UPDATE person SET car_id = 493 WHERE id = 14;
UPDATE person SET car_id = 494 WHERE id = 598;
UPDATE person SET car_id = 495 WHERE id = 40;
UPDATE person SET car_id = 496 WHERE id = 747;
UPDATE person SET car_id = 497 WHERE id = 238;
UPDATE person SET car_id = 498 WHERE id = 495;
UPDATE person SET car_id = 499 WHERE id = 118;
UPDATE person SET car_id = 500 WHERE id = 368;
UPDATE person SET car_id = 501 WHERE id = 646;
UPDATE person SET car_id = 502 WHERE id = 309;
UPDATE person SET car_id = 503 WHERE id = 212;
UPDATE person SET car_id = 504 WHERE id = 847;
UPDATE person SET car_id = 505 WHERE id = 507;
UPDATE person SET car_id = 506 WHERE id = 922;
UPDATE person SET car_id = 507 WHERE id = 814;
UPDATE person SET car_id = 508 WHERE id = 89;
UPDATE person SET car_id = 509 WHERE id = 472;
UPDATE person SET car_id = 510 WHERE id = 666;
UPDATE person SET car_id = 511 WHERE id = 559;
UPDATE person SET car_id = 512 WHERE id = 920;
UPDATE person SET car_id = 513 WHERE id = 246;
UPDATE person SET car_id = 514 WHERE id = 817;
UPDATE person SET car_id = 515 WHERE id = 249;
UPDATE person SET car_id = 516 WHERE id = 59;
UPDATE person SET car_id = 517 WHERE id = 86;
UPDATE person SET car_id = 518 WHERE id = 966;
UPDATE person SET car_id = 519 WHERE id = 577;
UPDATE person SET car_id = 520 WHERE id = 952;
UPDATE person SET car_id = 521 WHERE id = 637;
UPDATE person SET car_id = 522 WHERE id = 416;
UPDATE person SET car_id = 523 WHERE id = 484;
UPDATE person SET car_id = 524 WHERE id = 925;
UPDATE person SET car_id = 525 WHERE id = 29;
UPDATE person SET car_id = 526 WHERE id = 68;
UPDATE person SET car_id = 527 WHERE id = 9;
UPDATE person SET car_id = 528 WHERE id = 311;
UPDATE person SET car_id = 529 WHERE id = 503;
UPDATE person SET car_id = 530 WHERE id = 319;
UPDATE person SET car_id = 531 WHERE id = 522;
UPDATE person SET car_id = 532 WHERE id = 161;
UPDATE person SET car_id = 533 WHERE id = 11;
UPDATE person SET car_id = 534 WHERE id = 316;
UPDATE person SET car_id = 535 WHERE id = 791;
UPDATE person SET car_id = 536 WHERE id = 688;
UPDATE person SET car_id = 537 WHERE id = 535;
UPDATE person SET car_id = 538 WHERE id = 192;
UPDATE person SET car_id = 539 WHERE id = 66;
UPDATE person SET car_id = 540 WHERE id = 411;
UPDATE person SET car_id = 541 WHERE id = 502;
UPDATE person SET car_id = 542 WHERE id = 542;
UPDATE person SET car_id = 543 WHERE id = 173;
UPDATE person SET car_id = 544 WHERE id = 466;
UPDATE person SET car_id = 545 WHERE id = 884;
UPDATE person SET car_id = 546 WHERE id = 865;
UPDATE person SET car_id = 547 WHERE id = 287;
UPDATE person SET car_id = 548 WHERE id = 26;
UPDATE person SET car_id = 549 WHERE id = 902;
UPDATE person SET car_id = 550 WHERE id = 929;
UPDATE person SET car_id = 551 WHERE id = 234;
UPDATE person SET car_id = 552 WHERE id = 204;
UPDATE person SET car_id = 553 WHERE id = 285;
UPDATE person SET car_id = 554 WHERE id = 195;
UPDATE person SET car_id = 555 WHERE id = 228;
UPDATE person SET car_id = 556 WHERE id = 777;
UPDATE person SET car_id = 557 WHERE id = 44;
UPDATE person SET car_id = 558 WHERE id = 755;
UPDATE person SET car_id = 559 WHERE id = 840;
UPDATE person SET car_id = 560 WHERE id = 443;
UPDATE person SET car_id = 561 WHERE id = 244;
UPDATE person SET car_id = 562 WHERE id = 334;
UPDATE person SET car_id = 563 WHERE id = 995;
UPDATE person SET car_id = 564 WHERE id = 723;
UPDATE person SET car_id = 565 WHERE id = 564;
UPDATE person SET car_id = 566 WHERE id = 197;
UPDATE person SET car_id = 567 WHERE id = 935;
UPDATE person SET car_id = 568 WHERE id = 831;
UPDATE person SET car_id = 569 WHERE id = 425;
UPDATE person SET car_id = 570 WHERE id = 149;
UPDATE person SET car_id = 571 WHERE id = 51;
UPDATE person SET car_id = 572 WHERE id = 318;
UPDATE person SET car_id = 573 WHERE id = 382;
UPDATE person SET car_id = 574 WHERE id = 794;
UPDATE person SET car_id = 575 WHERE id = 74;
UPDATE person SET car_id = 576 WHERE id = 430;
UPDATE person SET car_id = 577 WHERE id = 385;
UPDATE person SET car_id = 578 WHERE id = 827;
UPDATE person SET car_id = 579 WHERE id = 420;
UPDATE person SET car_id = 580 WHERE id = 749;
UPDATE person SET car_id = 581 WHERE id = 587;
UPDATE person SET car_id = 582 WHERE id = 201;
UPDATE person SET car_id = 583 WHERE id = 142;
UPDATE person SET car_id = 584 WHERE id = 296;
UPDATE person SET car_id = 585 WHERE id = 775;
UPDATE person SET car_id = 586 WHERE id = 674;
UPDATE person SET car_id = 587 WHERE id = 268;
UPDATE person SET car_id = 588 WHERE id = 475;
UPDATE person SET car_id = 589 WHERE id = 978;
UPDATE person SET car_id = 590 WHERE id = 260;
UPDATE person SET car_id = 591 WHERE id = 498;
UPDATE person SET car_id = 592 WHERE id = 292;
UPDATE person SET car_id = 593 WHERE id = 100;
UPDATE person SET car_id = 594 WHERE id = 509;
UPDATE person SET car_id = 595 WHERE id = 439;
UPDATE person SET car_id = 596 WHERE id = 602;
UPDATE person SET car_id = 597 WHERE id = 658;
UPDATE person SET car_id = 598 WHERE id = 677;
UPDATE person SET car_id = 599 WHERE id = 724;
UPDATE person SET car_id = 600 WHERE id = 353;

-- =========================================================
-- Useful Queries
-- =========================================================

-- All persons with their car (LEFT JOIN shows persons without car too)
SELECT p.id, p.first_name, p.last_name, p.gender, p.email,
       p.date_of_birth, p.country_of_birth,
       c.make, c.model, c.price
FROM person p
LEFT JOIN car c ON p.car_id = c.id;

-- Persons who own a car
SELECT p.*, c.make, c.model, c.price
FROM person p
JOIN car c ON p.car_id = c.id;

-- Persons without a car
SELECT * FROM person WHERE car_id IS NULL;

-- Count: has car vs no car
SELECT
    COUNT(CASE WHEN car_id IS NOT NULL THEN 1 END) AS has_car,
    COUNT(CASE WHEN car_id IS NULL THEN 1 END)     AS no_car
FROM person;