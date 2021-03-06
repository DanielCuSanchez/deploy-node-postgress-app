CREATE TABLE IF NOT EXISTS users(
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  name TEXT NOT NULL CHECK (name <> ''),
  lastname TEXT NOT NULL CHECK (lastname <> ''),
  email TEXT NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS tasks(
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  name TEXT NOT NULL CHECK (name <> ''),
  description TEXT,
  done BOOLEAN,
  deliverydate DATE NOT NULL,
  userid INTEGER REFERENCES users(id)
);


INSERT INTO users(name, lastname, email, password)
VALUES('Sergio','Sanchez', 'sergio@devf.mx','password');