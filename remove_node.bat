@echo off 

set work_path=%cd%
rem /d只针对目录，/R  for /L%%变量 in (起始值，每次增值，结束时的比较值) do 命令
for /d %work_path% %%s in (node_modules) do (
	rem 显示文件名称
	if exist %%s (
		echo %%s
		echo %%s >> file.log
		rem 当前窗口调用执行命令	
		call rimraf %%s
	)
	rem 新窗口调用执行命令
	rem start npm uninstall *
)
pause

