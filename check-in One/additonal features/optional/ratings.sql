CREATE TABLE ratings (
    id SERIAL PRIMARY KEY,
    reviewer_id INT REFERENCES users(id) ON DELETE CASCADE,
    reviewed_user_id INT REFERENCES users(id) ON DELETE CASCADE,
    doubt_id INT REFERENCES doubts(id) ON DELETE CASCADE, -- Rating is tied to a doubt
    rating INT CHECK (rating BETWEEN 1 AND 5) NOT NULL,
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
