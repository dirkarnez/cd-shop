@echo off
SET PATH=%PATH%;D:\Softwares\portacle\win\bin\
sbcl.exe --no-userinit --load main.lisp --eval "(sb-ext:save-lisp-and-die \"helloworld.exe\" :toplevel 'main :executable t)"
pause
