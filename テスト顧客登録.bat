@echo off
setlocal enabledelayedexpansion

rem <<�p�����[�^�Z�b�g��>>
rem set pa1=09050115608
rem set pa2=�Q�O�Q�T�|�O�P�|�P�T�|�U�O�W
rem set pa3=�޳�ݶ���2501158
rem set pa4=����08
rem set pa5=�����Q�T�O�P�P�T�W
rem set pa6=�ڋq�O�W

rem <<�R���g���[���J�[�h����p�����[�^��ǂݎ��>>
set "line="
for /f "tokens=*" %%A in (Parameter.csv) do (
    set "line=%%A"
)

rem <<�J���}�ŋ�؂�ꂽ�p�����[�^��z��ɕ���>>
set count=0
for %%B in (%line%) do (
    set /a count+=1
    set "para!count!=%%B"
)

rem <<�������擾>>
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

rem <<param3=�J�i����_��>>
set param3=!para4!%YMMDDh%


rem <<param5=����_��>>
set param5=%YMMDDh%
for /f "delims=, tokens=1-2" %%p in (Half-FullConv.csv) do (
    set param5=!param5:%%p=%%q!
)
set param5=!para3!!param5!

rem <<�Z���ڍ�(���p���S�p)>>
set AddressHalf=%YYYY%�[%DATE:~4,2%�[%DD%�[%h%
for /f "delims=, tokens=1-2" %%j in (Half-FullConv.csv) do (

    set AddressHalf=!AddressHalf:%%j=%%k!
)

rem <<�J��Ԃ������i�p�����[�^�Ŏw�肵���������J��Ԃ�>>
for /l %%i in (1,1,!para1!) do (
	set formattedCount=00%%i
	set formattedCount=!formattedCount:~-2!
	
	rem <<param1=�d�b�ԍ�>>
	set param1=090%YMM%%DD%%h%!formattedCount!


	rem <<param2=�ڍ׏Z��>>
	set CountFull=0%%i
	set CountFull=!CountFull:~-2!
	for /f "delims=, tokens=1-2" %%p in (Half-FullConv.csv) do (
    		set CountFull=!CountFull:%%p=%%q!
	)
	set param2=%AddressHalf%!CountFull!

	rem <<param4=�J�i����_��>>
	set param4=����!formattedCount!

	rem <<param6=����_��>>
	set param6=�ڋq!CountFull!

	rem <<1�b�ҋ@>>
	timeout /t 1 /nobreak
	
	rem <<�V�K�ڋq�쐬���������{>>
	IF !para2! == 1 (
		start /b sqlplus LYRA_ST/PANASONICENG@LYRADB-SV5-TEST @C:\�e�X�g�ڋq�o�^\�e�X�g�ڋq�o�^_�n��1.sql !param1! !param2! %param3% !param4! %param5% !param6!
		if %ERRORLEVEL% neq 0 (
			exit /b %ERRORLEVEL%
		)
	) ELSE (
		start /b sqlplus LYRA_ST/PANASONICENG@LYRADB-SV5-TEST @C:\�e�X�g�ڋq�o�^\�e�X�g�ڋq�o�^_�n��2.sql !param1! !param2! %param3% !param4! %param5% !param6!
		if %ERRORLEVEL% neq 0 (
			exit /b %ERRORLEVEL%
		)
	)
	
)


