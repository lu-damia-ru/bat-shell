@echo off
for %%i in ("\*xdat.exe") do (
	call logger.bat INFO "Wait! Upgrading AV: %%i"
	call %%i /SILENT
)