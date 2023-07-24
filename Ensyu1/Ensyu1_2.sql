/*PopTbl2テーブルの情報から性別ごとの各都道府県の人口と全国の人口を示したテーブル*/
SELECT
	/*性別列を示すCASE式*/
	CASE
		/*条件式*/
		WHEN
			/*性別列の値が1であるか*/
			sex = 1
		/*性別列の値が1であった場合*/
		THEN
			/*男と入れる*/
			'男'
		/*性別列の値が2であった場合*/
		ELSE
			/*女と入れる*/
			'女'
	/*CASE式の終了。列の名前を性別にする。*/
	END AS 性別,
	/*全国列を示す集約関数SUM*/
	SUM(population) AS 全国,
	/*徳島列を示す集約関数MAX*/
	MAX(
		/*徳島県のpopulation列の値だけ出すCASE式*/
		CASE
			/*都道府県名列を参照する*/
			pref_name
			/*条件式*/
			WHEN
				/*徳島か否かを調べる*/
				'徳島'
			/*徳島だった場合*/
			THEN
				/*人口の値を返す*/
				population
			/*徳島ではない場合*/
			ELSE
				/*0を返す*/
				0
		/*CASE式の終了。徳島を列名とする。*/
		END
	) AS 徳島,
	/*香川列を示す集約関数MAX*/
	MAX(
		/*香川県のpopulation列の値だけ出すCASE式*/
		CASE
			/*都道府県名列を参照する。*/
			pref_name
			/*条件式*/
			WHEN
				/*香川か否かを調べる*/
				'香川'
			/*香川だった場合*/
			THEN
				/*人口の値を返す*/
				population
			/*香川ではない場合*/
			ELSE
				/*0を返す。*/
				0
		/*CASE式の終了。香川を列名をとする*/
		END
	) AS 香川,
	/*愛媛列を示す集約関数MAX*/
	MAX(
		/*愛媛県のpopulation列の値だけ出すCASE式*/
		CASE
			/*都道府県名列を参照する。*/
			pref_name
			/*条件式*/
			WHEN
				/*愛媛か否かを調べる*/
				'愛媛'
			/*愛媛だった場合*/
			THEN
				/*人口の値を返す*/
				population
			/*愛媛ではない場合*/
			ELSE
				/*0を返す。*/
				0
		/*CASE式の終了。愛媛を列名をとする*/
		END
	) AS 愛媛,
	/*高知列を示す集約関数MAX*/
	MAX(
		/*高知県のpopulation列の値だけ出すCASE式*/
		CASE
			/*都道府県名列を参照する。*/
			pref_name
			/*条件式*/
			WHEN
				/*高知か否かを調べる*/
				'高知'
			/*高知だった場合*/
			THEN
				/*人口の値を返す*/
				population
			/*高知ではない場合*/
			ELSE
				/*0を返す。*/
				0
		/*CASE式の終了。高知を列名をとする*/
		END
	) AS 高知,
	/*福岡列を示す集約関数MAX*/
	MAX(
		/*福岡県のpopulation列の値だけ出すCASE式*/
		CASE
			/*都道府県名列を参照する。*/
			pref_name
			/*条件式*/
			WHEN
				/*福岡か否かを調べる*/
				'福岡'
			/*福岡だった場合*/
			THEN
				/*人口の値を返す*/
				population
			/*福岡ではない場合*/
			ELSE
				/*0を返す。*/
				0
		/*CASE式の終了。福岡を列名をとする*/
		END
	) AS 福岡,
	/*佐賀列を示す集約関数MAX*/
	MAX(
		/*佐賀県のpopulation列の値だけ出すCASE式*/
		CASE
			/*都道府県名列を参照する。*/
			pref_name
			/*条件式*/
			WHEN
				/*佐賀か否かを調べる*/
				'佐賀'
			/*佐賀だった場合*/
			THEN
				/*人口の値を返す*/
				population
			/*佐賀ではない場合*/
			ELSE
				/*0を返す。*/
				0
		/*CASE式の終了。佐賀を列名をとする*/
		END
	) AS 佐賀,
	/*長崎列を示す集約関数MAX*/
	MAX(
		/*長崎県のpopulation列の値だけ出すCASE式*/
		CASE
			/*都道府県名列を参照する。*/
			pref_name
			/*条件式*/
			WHEN
				/*長崎か否かを調べる*/
				'長崎'
			/*長崎だった場合*/
			THEN
				/*人口の値を返す*/
				population
			/*長崎ではない場合*/
			ELSE
				/*0を返す。*/
				0
		/*CASE式の終了。長崎を列名をとする*/
		END
	) AS 長崎,
	/*東京列を示す集約関数MAX*/
	MAX(
		/*東京都のpopulation列の値だけ出すCASE式*/
		CASE
			/*都道府県名列を参照する。*/
			pref_name
			/*条件式*/
			WHEN
				/*東京か否かを調べる*/
				'東京'
			/*東京だった場合*/
			THEN
				/*人口の値を返す*/
				population
			/*東京ではない場合*/
			ELSE
				/*0を返す。*/
				0
		/*CASE式の終了。東京を列名をとする*/
		END
	) AS 東京,
	/*四国を示す集約関数MAX*/
	SUM(
		/*四国のpopulation列の値だけ出すCASE式*/
		CASE
			/*条件式*/
			WHEN
			/*都道府県名列が四国の四県であるか否かを調べる*/
			pref_name IN ('徳島','香川','愛媛','高知')
			/*四国だった場合*/
			THEN
				/*人口の値を返す*/
				population
			/*四国ではない場合*/
			ELSE
				/*0を返す。*/
				0
		/*CASE式の終了。四国を列名をとする*/
		END
	) AS 四国
/*参照するテーブル*/
FROM
	/*PopTbl2テーブル*/
	PopTbl2
/*グループ化する*/
GROUP BY
	/*性別列*/
	sex
;