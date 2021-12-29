@echo off
cd quicklisp
SET PATH=%PATH%;%~dp0\sbcl-2.1.11-x86-64-windows-binary
sbcl.exe --load quicklisp.lisp
cd ..