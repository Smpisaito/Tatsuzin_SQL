/*Greatestsテーブルの各Keyごとにx、y、zの三つの列の値から最大値を示すテーブル*/
SELECT
	/*主キーであるkey列*/
	Greatests_key AS 'key',
	/*x、y、z三つの列の中の最大値を出すCASE式*/
	CASE
		/*条件式*/
		WHEN
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
			END
			/*CASE式で出した値とzとの比較*/
			 > z
		/*zのほうが小さい場合*/
		THEN
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
			END
		/*zのほうが大きい場合(同値も含む)*/
		ELSE
			/*zの値を出す*/
			z
	/*CASE式の終了。列名を「greatest」にする*/
	END AS greatest
/*参照するテーブル*/
FROM
	/*Greatestsテーブル*/
	Greatests
;