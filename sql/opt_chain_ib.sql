    CREATE TABLE IF NOT EXISTS "OPTIONS_CHAIN_IB" (
"load_dttm" TIMESTAMP   not null ,
  "symbol" varchar(4)    not null ,
  "expiry" date    not null,
  "strike" REAL    not null ,
  "right" char(1)    not null,
  "multiplier" smallserial,
  "bidPrice" REAL,
  "bidSize" REAL,
  "askPrice" REAL,
  "askSize" REAL,
  "lastPrice" REAL,
  "lastSize" REAL,
  "closePrice" REAL,
  "modelImpliedVol" REAL,
  "modelDelta" REAL,
  "modelOptPrice" REAL,
  "modelGamma" REAL,
  "modelVega" REAL,
  "modelTheta" REAL,
  "modelUndPrice" REAL,
  "bidImpliedVol" REAL,
  "bidDelta" REAL,
  "bidOptPrice" REAL,
  "bidGamma" REAL,
  "bidVega" REAL,
  "bidTheta" REAL,
  "bidUndPrice" REAL,
  "askImpliedVol" REAL,
  "askDelta" REAL,
  "askOptPrice" REAL,
  "askGamma" REAL,
  "askVega" REAL,
  "askTheta" REAL,
  "askUndPrice" REAL,
  "lastImpliedVol" REAL,
  "lastDelta" REAL,
  "lastOptPrice" REAL,
  "lastGamma" REAL,
  "lastVega" REAL,
  "lastTheta" REAL,
  "lastUndPrice" REAL,
  "CallOI" REAL,
  "PutOI" REAL,
  "Volume" REAL,
  "highPrice" REAL,
  "lowPrice" REAL,
   PRIMARY KEY("load_dttm","symbol", "expiry","strike", "right" )
);
--CREATE INDEX "ix_OPTIONS_CHAIN_IB_index"ON "OPTIONS_CHAIN_IB" ("load_dttm");


-- This creates a hypertable that is partitioned by time
--   using the values in the `time` column.

-- USING https://docs.timescale.com/v0.9/getting-started/creating-hypertables

SELECT create_hypertable("OPTIONS_CHAIN_IB", "load_dttm");