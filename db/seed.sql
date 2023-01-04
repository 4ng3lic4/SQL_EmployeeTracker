USE employeetracker_db;


-- Insert multiple  items into the table named: table1 --
INSERT INTO 
department (name)
VALUES
    ("Sales"),
    ("Engineering"),
    ("Management"),
    ("Legal");

INSERT INTO 
role (title, salary, department_id)
VALUES
    ("Software Engineer", 75000, 2),
    ("Sales Person", 50000, 1),
    ("Manager", 60000, 3),
    ("Attorney", 120000, 4);

    INSERT INTO 
employee (first_name, last_name, role_id, manager_id )
VALUES
    ("Maria", "Smith", 1, NULL ),
    ("Aqua", "Jackson", 2, 1),
    ("Artica", "Lopez", 3, NULL),
    ("Benji", "Hutchence", 4, 2);

    -- Run in CLI with: source seed.sql --