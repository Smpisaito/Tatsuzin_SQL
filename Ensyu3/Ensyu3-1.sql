/*Productsテーブルの二列の重複組み合わせを求める。*/
SELECT
	/*名前列1*/
	P1.name AS name1,
	/*名前列2*/
	P2.name AS name2
/*参照元のテーブル*/
FROM
	/*商品テーブル1*/
	Products AS P1
/*内部結合*/
INNER JOIN
	/*商品テーブル2*/
	Products AS P2
/*結合条件*/
ON
	/*商品名の文字コードの値が同じか大きい条件*/
	P1.name >= P2.name
;