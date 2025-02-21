@echo off
setlocal enabledelayedexpansion

rem <<ÉpÉâÉÅÅ[É^ÉZÉbÉgó·>>
rem set pa1=09050115608
rem set pa2=ÇQÇOÇQÇTÅ|ÇOÇPÅ|ÇPÇTÅ|ÇUÇOÇW
rem set pa3=ƒﬁ≥∫›∂∏∆›2501158
rem set pa4=∫∑¨∏08
rem set pa5=ìØç´ÇQÇTÇOÇPÇPÇTÇW
rem set pa6=å⁄ãqÇOÇW

rem <<ÉRÉìÉgÉçÅ[ÉãÉJÅ[ÉhÇ©ÇÁÉpÉâÉÅÅ[É^Çì«Ç›éÊÇÈ>>
set "line="
for /f "tokens=*" %%A in (Parameter.csv) do (
    set "line=%%A"
)

rem <<ÉJÉìÉ}Ç≈ãÊêÿÇÁÇÍÇΩÉpÉâÉÅÅ[É^ÇîzóÒÇ…ï™äÑ>>
set count=0
for %%B in (%line%) do (
    set /a count+=1
    set "para!count!=%%B"
)

rem <<ì˙éûÇéÊìæ>>
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

rem <<param3=ÉJÉiéÅñº_ê©>>
set param3=!para4!%YMMDDh%


rem <<param5=éÅñº_ê©>>
set param5=%YMMDDh%
for /f "delims=, tokens=1-2" %%p in (Half-FullConv.csv) do (
    set param5=!param5:%%p=%%q!
)
set param5=!para3!!param5!

rem <<èZèäè⁄ç◊(îºäpÅ®ëSäp)>>
set AddressHalf=%YYYY%Å[%DATE:~4,2%Å[%DD%Å[%h%
for /f "delims=, tokens=1-2" %%j in (Half-FullConv.csv) do (

    set AddressHalf=!AddressHalf:%%j=%%k!
)

rem <<åJÇËï‘ÇµèàóùÅiÉpÉâÉÅÅ[É^Ç≈éwíËÇµÇΩêîÇæÇØåJÇËï‘Ç∑>>
for /l %%i in (1,1,!para1!) do (
	set formattedCount=00%%i
	set formattedCount=!formattedCount:~-2!
	
	rem <<param1=ìdòbî‘çÜ>>
	set param1=090%YMM%%DD%%h%!formattedCount!


	rem <<param2=è⁄ç◊èZèä>>
	set CountFull=0%%i
	set CountFull=!CountFull:~-2!
	for /f "delims=, tokens=1-2" %%p in (Half-FullConv.csv) do (
    		set CountFull=!CountFull:%%p=%%q!
	)
	set param2=%AddressHalf%!CountFull!

	rem <<param4=ÉJÉiéÅñº_ñº>>
	set param4=∫∑¨∏!formattedCount!

	rem <<param6=éÅñº_ñº>>
	set param6=å⁄ãq!CountFull!

	rem <<1ïbë“ã@>>
	timeout /t 1 /nobreak
	
	rem <<êVãKå⁄ãqçÏê¨èàóùÇé¿é{>>
	IF !para2! == 1 (
		start /b sqlplus LYRA_ST/PANASONICENG@LYRADB-SV5-TEST @C:\ÉeÉXÉgå⁄ãqìoò^\ÉeÉXÉgå⁄ãqìoò^_ínàÊ1.sql !param1! !param2! %param3% !param4! %param5% !param6!
		if %ERRORLEVEL% neq 0 (
			exit /b %ERRORLEVEL%
		)
	) ELSE (
		start /b sqlplus LYRA_ST/PANASONICENG@LYRADB-SV5-TEST @C:\ÉeÉXÉgå⁄ãqìoò^\ÉeÉXÉgå⁄ãqìoò^_ínàÊ2.sql !param1! !param2! %param3% !param4! %param5% !param6!
		if %ERRORLEVEL% neq 0 (
			exit /b %ERRORLEVEL%
		)
	)
	
)


