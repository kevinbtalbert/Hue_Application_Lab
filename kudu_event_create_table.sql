CREATE TABLE kudu_event_data (
    event_time STRING,
    acc_id INT,
    transaction_id STRING,
    f_name STRING,
    l_name STRING,
    email STRING,
    gender STRING,
    phone STRING,
    card STRING,
    lat DOUBLE,
    lon DOUBLE,
    amount INT,
    PRIMARY KEY (event_time, acc_id, transaction_id)
)
PARTITION BY HASH PARTITIONS 8
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');