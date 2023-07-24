/*達人に学ぶSQLの演習2の結果予想のSELECT文2*/
SELECT
	server,
	sample_date,
	SUM(load_val) OVER (PARTITION BY server) AS sum_load
/*参照テーブル*/
FROM
	ServerLoadSample
;