@echo off
SET PATH=%PATH%;%~dp0\sbcl-2.1.11-x86-64-windows-binary
for /R %~dp0 %%f in (*.lisp) do (
    sbcl.exe --no-userinit --load %%f --eval "(sb-ext:save-lisp-and-die \"%%~nf.exe\" :toplevel 'main :executable t)"
)