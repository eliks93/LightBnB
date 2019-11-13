CREATE TABLE rates (
  id SERIAL PRIMARY KEY NOT NULL,
  cost_per_night BIGINT NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE
);

CREATE TABLE guest_reviews (
  id SERIAL PRIMARY KEY NOT NULL,
  rating SMALLINT NOT NULL DEFAULT 0,
  message TEXT,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);