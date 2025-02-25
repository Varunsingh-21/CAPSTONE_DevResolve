CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    role VARCHAR(20) CHECK (role IN ('poster', 'solver', 'admin')) NOT NULL,
    reputation INT DEFAULT 0, -- Reputation score
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
