#NoEnv                              ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn                               ; Enable warnings to assist with detecting common errors.
SendMode Input                      ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%         ; Ensures a consistent starting directory.

#Include macros-priv.ahk

RAlt & t::
FormatTime, TimeString,, yyyyMMdd-HHmmss
SendInput, %TimeString%
Return

RAlt & d::
Tomorrow := A_Now
Tomorrow += 1, Days
FormatTime, DateEntry, %Tomorrow%, dddd M/d/y
SendInput, {#}{#} %DateEntry%{Enter}
SendInput, {#}{#}{#} Plan{Enter}
SendInput, {#}{#}{#} Execute{Enter}
SendInput, {#}{#}{#} Review{Enter}
Return

RAlt & c::
SendInput {U+2713}
Return

RAlt & e::
SendInput %EMAIL%
Return

#if WinActive("ahk_exe typora.exe")
Enter::send +{Enter}
+Enter::send {Enter}
#if
