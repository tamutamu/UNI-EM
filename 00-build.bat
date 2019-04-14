REM Build...

set CMD_OPTS=--debug all --noconfirm --log-level=DEBUG --clean
pyinstaller %CMD_OPTS% specs/main_.spec > build_main.log 2>&1
pyinstaller %CMD_OPTS% specs/train_.spec > build_train.log 2>&1
pyinstaller %CMD_OPTS% specs/run_inference_win_.spec> build_run_inference_win.log 2>&1


REM Copy...

set TARGET=train
xcopy /I /E dist\%TARGET% dist\main\%TARGET%\

set TARGET=run_inference_win
xcopy /I /E dist\%TARGET% dist\main\%TARGET%\


explorer dist\main