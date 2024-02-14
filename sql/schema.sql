CREATE TABLE crime(
    crimeId BIGSERIAL PRIMARY KEY,
    crime_type VARCHAR(100) NOT NULL,
    incarceration_date DATE NOT NULL,
    prison_sentence INT NOT NULL,
    prison VARCHAR(100) NOT NULL
);
CREATE TABLE security_plus(
    securityId BIGSERIAL PRIMARY KEY,
    clearance_type VARCHAR(100) NOT NULL

);
CREATE TABLE people(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    security_clearance BIGINT REFERENCES security_plus(securityId),
    crime BIGINT REFERENCES crime(crimeId)
);