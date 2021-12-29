@echo off
SET PATH=%PATH%;%~dp0\sbcl-2.1.11-x86-64-windows-binary
REM Powershell .\compile-specified.cmd list; cls; .\list.exe 
sbcl.exe --no-userinit --load %1.lisp --eval "(sb-ext:save-lisp-and-die \"%1.exe\" :toplevel 'main :executable t)"
