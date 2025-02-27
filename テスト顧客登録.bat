@echo off
setlocal enabledelayedexpansion

rem <<パラメータセット例>>
rem set pa1=09050115608
rem set pa2=２０２５−０１−１５−６０８
rem set pa3=ﾄﾞｳｺﾝｶｸﾆﾝ2501158
rem set pa4=ｺｷｬｸ08
rem set pa5=同梱２５０１１５８
rem set pa6=顧客０８

rem <<コントロールカードからパラメータを読み取る>>
set "line="
for /f "tokens=*" %%A in (Parameter.csv) do (
    set "line=%%A"
)

rem <<カンマで区切られたパラメータを配列に分割>>
set count=0
for %%B in (%line%) do (
    set /a count+=1
    set "para!count!=%%B"
)

rem <<日時を取得>>
for /f "tokens=2 delims==." %%i in ('wmic os get localdatetime /value') do set datetime=%%i
set DATE=%datetime:~0,8%
set TIME=%datetime:~8,6%
set YYYY=%DATE:~0,4%
set Y=%DATE:~3,1%
set YMM=%DATE:~3,3%
set DD=%DATE:~6,2%
set hh=%TIME:~0,2%
set h=%TIME:~1,1%
set mm=%TIME:~3,2%
set ss=%TIME:~6,2%
set YMMDDh=%datetime:~3,5%%h%

rem <<param3=カナ氏名_姓>>
set param3=!para4!%YMMDDh%


rem <<param5=氏名_姓>>
set param5=%YMMDDh%
for /f "delims=, tokens=1-2" %%p in (Half-FullConv.csv) do (
    set param5=!param5:%%p=%%q!
)
set param5=!para3!!param5!

rem <<住所詳細(半角→全角)>>
set AddressHalf=%YYYY%ー%DATE:~4,2%ー%DD%ー%h%
for /f "delims=, tokens=1-2" %%j in (Half-FullConv.csv) do (

    set AddressHalf=!AddressHalf:%%j=%%k!
)

rem <<繰り返し処理（パラメータで指定した数だけ繰り返す>>
for /l %%i in (1,1,!para1!) do (
	set formattedCount=00%%i
	set formattedCount=!formattedCount:~-2!
	
	rem <<param1=電話番号>>
	set param1=090%YMM%%DD%%h%!formattedCount!


	rem <<param2=詳細住所>>
	set CountFull=0%%i
	set CountFull=!CountFull:~-2!
	for /f "delims=, tokens=1-2" %%p in (Half-FullConv.csv) do (
    		set CountFull=!CountFull:%%p=%%q!
	)
	set param2=%AddressHalf%!CountFull!

	rem <<param4=カナ氏名_名>>
	set param4=ｺｷｬｸ!formattedCount!

	rem <<param6=氏名_名>>
	set param6=顧客!CountFull!

	rem <<1秒待機>>
	timeout /t 1 /nobreak
	
	rem <<新規顧客作成処理を実施>>
	IF !para2! == 1 (
		start /b sqlplus LYRA_ST/PANASONICENG@LYRADB-SV5-TEST @C:\テスト顧客登録\テスト顧客登録_地域1.sql !param1! !param2! %param3% !param4! %param5% !param6!
		if %ERRORLEVEL% neq 0 (
			exit /b %ERRORLEVEL%
		)
	) ELSE (
		start /b sqlplus LYRA_ST/PANASONICENG@LYRADB-SV5-TEST @C:\テスト顧客登録\テスト顧客登録_地域2.sql !param1! !param2! %param3% !param4! %param5% !param6!
		if %ERRORLEVEL% neq 0 (
			exit /b %ERRORLEVEL%
		)
	)
	
)


