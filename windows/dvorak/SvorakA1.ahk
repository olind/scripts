; Created by Ola Lindberg (http://olalindberg.com/)
; Licensed under the Creative Commons Attribution 3.0

SendMode Input
#NoEnv
SetBatchLines -1
ListLines Off
SetWorkingDir %A_ScriptDir%

Menu, Tray, Icon, dvorak-icon-on.ico
menu, tray, tip, AutoHotkey script for the Swedish Dvorak layout A1. Optimized for the Kinesis Advantage keyboard.
Process, Priority, , High

SetTitleMatchMode 2

;$Capslock::LCtrl
;$LCtrl::Capslock

;Make explorer understand that Ctrl+L means goto location bar. Not sure if this works on other systems than Win7.
;Note that I remapped my p key to a l above. Tricky!
;Thanks to Natan (http://stackoverflow.com/users/399543/nathan) & the Talisman at the AHK IRC channel for help
#IfWinActive ahk_class CabinetWClass
	^p::Send {F4}
#IfWinActive

;<^>!F1::
;	Suspend, Permit
;	Suspend, toggle
;return

; ---------------------------------------------------------------------------
; SVORAK KEYBOARD REMAPPING
; ---------------------------------------------------------------------------

SetTitleMatchMode fast

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

;$<^>!w::@
;$<^>!e::£
;$<^>!r::$
;$<^>!t::€
;$<^>!a::[
;$<^>!s::]
;$<^>!d::SendInput, {{} ; No idea why; without SendInput I can't get it to work
;$<^>!f::SendInput, {}}
;$<^>!x::~
;$<^>!c::\