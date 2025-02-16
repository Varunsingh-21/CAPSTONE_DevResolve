-- This will store the data about each trasaction

CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    doubt_id INT REFERENCES doubts(id) ON DELETE CASCADE,
    poster_id INT REFERENCES users(id) ON DELETE CASCADE,
    solver_id INT REFERENCES users(id) ON DELETE CASCADE,
    amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) CHECK (status IN ('pending', 'released', 'disputed', 'refunded')) DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
