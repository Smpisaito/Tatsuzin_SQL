/*Greatestsテーブルのkey列を[B-A-D-C]の順に並び替えをする。*/
SELECT
	/*key列*/
	Greatests_key AS 'key'
/*参照元のテーブル*/
FROM
	/*Greatestsテーブル*/
	Greatests
/*ソート条件*/
ORDER BY
	/*ソートを行うCASE式*/
	CASE 
		/*keyがBの時は1と返す。*/
 		WHEN Greatests_key = 'B' THEN 1
 		/*keyがAの時は2と返す。*/
 		WHEN Greatests_key = 'A' THEN 2
 		/*keyがDの時は3と返す。*/
 		WHEN Greatests_key = 'D' THEN 3
 		/*keyがそれ以外(C)の時は4と返す。*/
 		ELSE 4
 	/*CASE式の終了*/
 	END
;