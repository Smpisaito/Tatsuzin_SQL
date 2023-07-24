/*Greatestsテーブルの各Keyのa列とb列を比較したときの大きい値を示すテーブル*/
SELECT
	/*主キーであるkey列*/
	Greatests_key AS 'key',
	/*xとyの列の大きいほうの値を出すCASE式*/
	CASE
		/*条件式*/
		WHEN
			/*xのほうが大きいかどうか*/
			x > y 
		/*xのほうが大きい場合*/
		THEN
			/*xの値を出す*/
			x
		/*yのほうが大きい場合(同値も含む)*/
		ELSE
			/*yの値を出す*/
			y
	/*CASE式の終了*/
	END AS greatest
/*参照するテーブル*/
FROM
	/*Greatestsテーブル*/
	Greatests
;