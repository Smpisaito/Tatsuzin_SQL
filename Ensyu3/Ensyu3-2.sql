/*Duplication_Productsテーブルから重複した列を削除する*/

/*Duplication_Productsテーブルに商品名ごとの連番の列を付けた新しいテーブルをつくる*/
CREATE TABLE
	/*新しい商品テーブルNew_Productsをつくる*/
	New_Products
/*サブクエリをもとにする*/
AS
	/*サブクエリの列*/
	SELECT
		/*条件範囲の列数を示すウィンドウ関数*/
		COUNT(name) OVER (
			/*条件ごとに行を分割する*/
			PARTITION BY
				/*商品名*/
				name,
				/*価格*/
				price
			/*列の参照範囲の指定*/
			ROWS BETWEEN
				/*現在の列以前すべて*/
				UNBOUNDED PRECEDING
			/*上記から下記までの範囲*/
			AND
				/*現在の列*/
				CURRENT ROW
		/*列名の指定*/
		) AS key_number,
		/*商品名*/
		name,
		/*価格*/
		price
	/*参照元のテーブル*/
	FROM
		/*Duplication_Productsテーブルを参照する*/
		Duplication_Products
;

/*key_numberを用いてNew_Productsテーブルから削除を行う*/
DELETE FROM
	New_Products
WHERE
	key_number > 1
;