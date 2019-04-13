REM Build...

set CMD_OPTS=--debug all --noconfirm --log-level=DEBUG --clean
pyinstaller %CMD_OPTS% specs/main_.spec
pyinstaller %CMD_OPTS% specs/train_.spec
pyinstaller %CMD_OPTS% specs/run_inference_win_.spec


REM Copy...

set TARGET=train
xcopy /I /E dist\%TARGET% dist\main\%TARGET%\

set TARGET=run_inference_win
xcopy /I /E dist\%TARGET% dist\main\%TARGET%\


explorer dist\main