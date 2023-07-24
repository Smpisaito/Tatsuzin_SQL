
/*Greatestsテーブルの初期化用*/
/*Greatestsテーブルの削除*/
DROP TABLE IF EXISTS Greatests;

/*Greatestsテーブルの再構成*/
CREATE TABLE
	/*テーブル名(Greatests)*/
	Greatests
	/*列の設定*/
	(
		Greatests_key CHAR(5),
		x INT NOT NULL,
		y INT NOT NULL,
		z INT NOT NULL,
		PRIMARY KEY (Greatests_key)
	)
;

/*Greatestsテーブルに値を入れる。*/
INSERT INTO
	/*Greatestsテーブルのデータを入れる。*/
	Greatests
/*入れるデータ*/
VALUES
	/*データ群*/
	('A', 1, 2, 3),
	('B', 5, 5, 2),
	('C', 4, 7, 1),
	('D', 3, 3, 8)
;





/*PopTbl2テーブルの初期化用*/
/*PopTbl2テーブルの削除*/
DROP TABLE IF EXISTS PopTbl2;

/*PopTbl2テーブルの再構成*/
CREATE TABLE
	/*テーブル名(PopTbl2)*/
	PopTbl2
	/*列の設定*/
	(
		pref_name CHAR(3),
		sex SMALLINT,
		population INT,
		PRIMARY KEY (pref_name, sex)
	)
;

/*PopTbl2テーブルにデータを入れる。*/
INSERT INTO
	/*PopTbl2テーブルのデータを入れる。*/
	PopTbl2
/*入れるデータ*/
VALUES
	/*データ群*/
	('徳島', 1, 60),
	('徳島', 2, 40),
	('香川', 1, 100),
	('香川', 2, 100),
	('愛媛', 1, 100),
	('愛媛', 2, 50),
	('高知', 1, 100),
	('高知', 2, 100),
	('福岡', 1, 100),
	('福岡', 2, 200),
	('佐賀', 1, 20),
	('佐賀', 2, 80),
	('長崎', 1, 125),
	('長崎', 2, 125),
	('東京', 1, 250),
	('東京', 2, 150)
;