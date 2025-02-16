CREATE TABLE payments (
    id SERIAL PRIMARY KEY,
    doubt_id INT REFERENCES doubts(id) ON DELETE CASCADE,
    poster_id INT REFERENCES users(id) ON DELETE CASCADE,
    solver_id INT REFERENCES users(id) ON DELETE CASCADE,
    amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) CHECK (status IN ('pending', 'released', 'disputed', 'refunded')) DEFAULT 'pending',
    transaction_id TEXT UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
