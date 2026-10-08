CREATE TABLE stocks (
  id SERIAL PRIMARY KEY,
  symbol VARCHAR(10) NOT NULL UNIQUE,
  company_name TEXT NOT NULL,
  sector TEXT
);

CREATE TABLE prices (
  id BIGSERIAL PRIMARY KEY, 
  stock_id INTEGER NOT NULL REFERENCES stocks(id),
  trading_date DATE NOT NULL,
  open NUMERIC(12, 4) NOT NULL,
  high NUMERIC(12, 4) NOT NULL,
  low NUMERIC(12, 4) NOT NULL,
  close NUMERIC(12, 4) NOT NULL,
  volume BIGINT NOT NULL,
  UNIQUE (stock_id, trading_date)
);
