-- JSON and Array Examples

-- JSON example
CREATE TABLE events (
    event_id SERIAL PRIMARY KEY,
    metadata JSONB
);

INSERT INTO events (metadata)
VALUES ('{"type": "login", "device": "mobile"}');

SELECT metadata->>'device' AS device_used FROM events;

-- Array example
CREATE TABLE student_grades (
    student_id SERIAL PRIMARY KEY,
    grades INT[]
);

INSERT INTO student_grades (grades)
VALUES ('{80, 85, 90}');

SELECT grades[1] AS first_exam FROM student_grades;
