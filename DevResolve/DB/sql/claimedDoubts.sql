CREATE TABLE claimed_doubts (
    id SERIAL PRIMARY KEY,
    doubt_id INT REFERENCES doubts(id) ON DELETE CASCADE,
    poster_id INT REFERENCES users(id) ON DELETE CASCADE,
    solver_id INT REFERENCES users(id) ON DELETE CASCADE
);
