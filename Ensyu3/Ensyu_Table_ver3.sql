
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




/*ServerLoadSampleテーブルの初期化用*/
/*ServerLoadSampleテーブルの削除*/
DROP TABLE IF EXISTS ServerLoadSample;

/*ServerLoadSampleテーブルの再構成*/
CREATE TABLE
	/*テーブル名(ServerLoadSample)*/
	ServerLoadSample
	/*列の設定*/
	(
		server CHAR(3),
		sample_date DATE,
		load_val INT,
		PRIMARY KEY (server, sample_date)
	)
;

/*ServerLoadSampleテーブルに値を入れる。*/
INSERT INTO
	/*ServerLoadSampleテーブルのデータを入れる。*/
	ServerLoadSample
/*入れるデータ*/
VALUES
	/*データ群*/
	('A', '2018-02-01', 1024),
	('A', '2018-02-02', 2366),
	('A', '2018-02-05', 2366),
	('A', '2018-02-07', 985),
	('A', '2018-02-08', 780),
	('A', '2018-02-12', 1000),
	('B', '2018-02-01', 54),
	('B', '2018-02-02', 39008),
	('B', '2018-02-03', 2900),
	('B', '2018-02-04', 556),
	('B', '2018-02-05', 12600),
	('B', '2018-02-06', 7309),
	('C', '2018-02-01', 1000),
	('C', '2018-02-07', 2000),
	('C', '2018-02-16', 500)
;



/*Productsテーブルの初期化用*/
/*Productsテーブルの削除*/
DROP TABLE IF EXISTS Products;

/*Productsテーブルの再構成*/
CREATE TABLE
	/*テーブル名(Products)*/
	Products
	/*列の設定*/
	(
		name CHAR(20) PRIMARY KEY,
		price INT
	)
;

/*Productsテーブルに値を入れる。*/
INSERT INTO
	/*Productsテーブルのデータを入れる。*/
	Products
/*入れるデータ*/
VALUES
	/*データ群*/
	('りんご', 100),
	('みかん', 50),
	('バナナ', 80)
;




/*Duplication_Productsテーブルの初期化用*/
/*Duplication_Productsテーブルの削除*/
DROP TABLE IF EXISTS Duplication_Products;

/*Duplication_Productsテーブルの再構成*/
CREATE TABLE
	/*テーブル名(Duplication_Products)*/
	Duplication_Products
	/*列の設定*/
	(
		name CHAR(20),
		price INT
	)
;

/*Duplication_Productsテーブルに値を入れる。*/
INSERT INTO
	/*Duplication_Productsテーブルのデータを入れる。*/
	Duplication_Products
/*入れるデータ*/
VALUES
	/*データ群*/
	('りんご', 50),
	('みかん', 100),
	('みかん', 100),
	('みかん', 100),
	('バナナ', 80)
;