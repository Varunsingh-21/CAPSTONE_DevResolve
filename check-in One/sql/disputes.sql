CREATE TABLE disputes (
    id SERIAL PRIMARY KEY,
    doubt_id INT REFERENCES doubts(id) ON DELETE CASCADE,
    transaction_id INT REFERENCES transactions(transaction_id) ON DELETE CASCADE, -- Links to the payment for this doubt
    poster_id INT REFERENCES users(id) ON DELETE CASCADE,
    solver_id INT REFERENCES users(id) ON DELETE CASCADE,
    reason TEXT NOT NULL, -- User-submitted reason for dispute
    status VARCHAR(20) CHECK (status IN ('open', 'resolved', 'rejected')) DEFAULT 'open',
    resolution TEXT, -- Admin notes on how the dispute was resolved
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP NULL
);
