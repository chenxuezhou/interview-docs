@echo off

set /a size=1024"*"1024"*"50
for /R . %%i in (*) do (echo %%~fzi >>1.txt) 
rem 将文件大小存储到1.txt
for /f "tokens=1* delims= " %%a in (1.txt) do ( 
	rem set zer=%%a 赋值有问题
	
    if %%a gtr %size% ( 
		rem echo %zer% %%b
        echo %%b >> 2.txt        
		rem 将大于5KB的文件名称放到2.txt中
    )
)
pause