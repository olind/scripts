; Created by Ola Lindberg (http://olalindberg.com/)
; Licensed under the Creative Commons Attribution 3.0
; 
; TODO (make windows behave more like osx): 
; * autohide windows-bar
; * lower mouse speed
; * higher priority on process / optimize script. i'm having problems that mappings are failing when computer is under load

SendMode Input
#NoEnv
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, Icon, dvorak-icon-on.ico
menu, tray, tip, AutoHotkey script for the Swedish Dvorak layout A1. Optimized for the Kinesis Advantage keyboard.
Process, Priority, , High

SetTitleMatchMode 2

; Swap caps & left control
$Capslock::LCtrl
$LCtrl::Capslock

; Make explorer understand that Ctrl+L means goto location bar. Not sure if this works on other systems than Win7.
; Note that I remapped my p key to a l. Thanks to Natan (http://stackoverflow.com/users/399543/nathan) & the Talisman at the AHK IRC channel for help
#IfWinActive ahk_class CabinetWClass
	^p::Send {F4}
#IfWinActive

; Invert mouse scrolls (like osx)
WheelUp::
	Send {WheelDown}
Return
WheelDown::
	Send {WheelUp}
Return

; Make alt+left to home & alt+right end (like on osx)
!Left::Home
!Right::End

; Raises / lowers the volume with Alt+down / up -arrow
;!Up::Send {Volume_Up 3}
;!Down::Send {Volume_Down 3}

;<^>!F1::
;	Suspend, Permit
;	Suspend, toggle
;return

; ---------------------------------------------------------------------------
; SVORAK KEYBOARD REMAPPING
; ---------------------------------------------------------------------------

SetTitleMatchMode 1

;´1234567890+

$q::å
$w::ä
$e::ö
$r::p
$t::y
$y::f
$u::g
$i::c
$o::r
$p::l
;$*'

;$a
$s::o
$d::e
$f::u
$g::i
$h::d
$j::h
$k::t
$l::n
$ö::s
$ä::-

$z::.
$x::q
$c::j
$v::k
$b::x
$n::b
;$m
$,::w
$.::v
$-::z

;$§
;$<
$å::,
;$¨

$<^>!w::@
$<^>!e::£
$<^>!r::$
$<^>!t::€
$<^>!a::[
$<^>!s::]
$<^>!d::SendInput, {{} ; No idea why; without SendInput I can't get it to work
$<^>!f::SendInput, {}}
$<^>!x::~
$<^>!c::\