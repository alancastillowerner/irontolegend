-- Iron to Legend · ranking del desafío diario
-- Pegá todo esto en la consola de la base de datos D1 y apretá "Execute".
CREATE TABLE IF NOT EXISTS runs (
  day TEXT NOT NULL,
  game TEXT NOT NULL,
  device TEXT NOT NULL,
  name TEXT NOT NULL,
  cc TEXT NOT NULL DEFAULT 'XX',
  score INTEGER NOT NULL,
  title TEXT,
  meta TEXT,
  iph TEXT,
  ts INTEGER NOT NULL,
  PRIMARY KEY (day, game, device)
);
CREATE INDEX IF NOT EXISTS runs_rank ON runs (day, game, score DESC, ts);
CREATE INDEX IF NOT EXISTS runs_cc ON runs (day, game, cc, score DESC, ts);
CREATE INDEX IF NOT EXISTS runs_ip ON runs (day, iph);
CREATE TABLE IF NOT EXISTS hist (
  day TEXT NOT NULL,
  game TEXT NOT NULL,
  bucket INTEGER NOT NULL,
  n INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (day, game, bucket)
);
