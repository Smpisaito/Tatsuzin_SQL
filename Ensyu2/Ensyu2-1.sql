/*達人に学ぶSQLの演習2の結果予想のSELECT文1*/
SELECT
	server,
	sample_date,
	SUM(load_val) OVER () AS sum_load
/*参照テーブル*/
FROM
	ServerLoadSample
;