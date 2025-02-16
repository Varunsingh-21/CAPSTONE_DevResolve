CREATE TABLE chats_ref (
    id SERIAL PRIMARY KEY,
    poster_id INT REFERENCES users(id) ON DELETE CASCADE,
    solver_id INT REFERENCES users(id) ON DELETE CASCADE,
    doubt_id INT REFERENCES doubts(id) ON DELETE CASCADE,
    chat_file TEXT NOT NULL, -- File path where chat is stored
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
