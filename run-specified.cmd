@echo off
SET PATH=%PATH%;%~dp0\sbcl-2.1.11-x86-64-windows-binary
REM Powershell .\compile-specified.cmd list; cls; .\list.exe 
sbcl.exe --no-userinit --script %1.lisp 
