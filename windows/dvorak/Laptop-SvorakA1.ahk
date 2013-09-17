; Created by Ola Lindberg (http://olalindberg.com/)
; Licensed under the Creative Commons Attribution 3.0

SendMode Input
#NoEnv
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, Icon, dvorak-icon-on.ico
menu, tray, tip, AutoHotkey script for the Swedish Dvorak layout A1. Optimized for the Kinesis Advantage keyboard.
Process, Priority, , High


SetTitleMatchMode 2

;I'm remapping CapsLock and LShift in hardware. Then swapping CapsLock and 
;Escape in software. No really good reason for why.
;$Capslock::Escape
;$Escape::Capslock

;$Capslock::LCtrl
;$LCtrl::Capslock

;The Kinesis keyboard doesnt have any Windows button so I open the Start menu by clicking Alt + Space. Thanks http://stackoverflow.com/users/396761/skajfes for helping me out
;!Space::Send ^{Esc}

;Remap Ctrl + click to F12 in Visual Studio http://stackoverflow.com/questions/80857/in-visual-studio-2008-how-can-i-make-controlclick-do-a-go-to-definition
;#IfWinActive Visual C#
;	^LButton::Send {click}{f12}
;#IfWinActive

;Raises / lowers the volume with Alt+down / up -arrow
;!Up::Send {Volume_Up 3}
;!Down::Send {Volume_Down 3}

;Make explorer understand that Ctrl+L means goto location bar. Not sure if this works on other systems than Win7.
;Note that I remapped my p key to a l above. Tricky!
;Thanks to Natan (http://stackoverflow.com/users/399543/nathan) & the Talisman at the AHK IRC channel for help
#IfWinActive ahk_class CabinetWClass
	^p::Send {F4}
#IfWinActive

<^>!F1::
	Suspend, Permit
	Suspend, toggle
return

WheelUp::
Send {WheelDown}
Return

WheelDown::
Send {WheelUp}
Return

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