#NoEnv                              ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn                               ; Enable warnings to assist with detecting common errors.
SendMode Input                      ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%         ; Ensures a consistent starting directory.

#Include macros-priv.ahk

RAlt & t::
FormatTime, TimeString,, %A_now%
SendInput, %TimeString%
Return

RAlt & c::
SendInput {U+2713}
Return

RAlt & e::
SendInput %EMAIL%
Return
