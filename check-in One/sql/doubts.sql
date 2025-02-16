CREATE TABLE doubts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    tags TEXT[], -- Array for filtering
    bounty DECIMAL(10,2) NOT NULL,
    posted_by INT REFERENCES users(id) ON DELETE CASCADE,
    status VARCHAR(20) CHECK (status IN ('open', 'claimed', 'solved', 'disputed')) DEFAULT 'open',

    -- Solver Reactions
    -- we will be keeping a check on how many people gave the doubt what reaction and change the doubts card on page accordingly.
    not_paid_enough INT DEFAULT 0,
    overpaid INT DEFAULT 0,
    too_less_context INT DEFAULT 0,
    less_time_to_explain INT DEFAULT 0,
    ambiguous INT DEFAULT 0,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
