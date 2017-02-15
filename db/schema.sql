DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name TEXT,
  cp INTEGER,
  img_url TEXT,
  poke_type TEXT

);
