; Created by Ola Lindberg (http://olalindberg.com/)
; Licensed under the Creative Commons Attribution 3.0

SendMode Input
#NoEnv
Menu, Tray, Icon, dvorak-icon-on.ico
menu, tray, tip, AutoHotkey script for the Swedish Dvorak layout A1. Optimized for the Kinesis Advantage keyboard.
Process, Priority, , High

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
;I'm remapping CapsLock and LShift in hardware. Then swapping CapsLock and 
;Escape in software. No really good reason for why.
$Capslock::Escape
;$Escape::Capslock

;The Kinesis keyboard doesnt have any Windows button so I open the Start menu by clicking Alt + Space. Thanks http://stackoverflow.com/users/396761/skajfes for helping me out
!Space::Send ^{Esc}

#IfWinActive .* - Microsoft Visual C# *.
	^LButton::Send {click}{f1} 				;Remap Ctrl + click to F12 in Visual Studio http://stackoverflow.com/questions/80857/in-visual-studio-2008-how-can-i-make-controlclick-do-a-go-to-definition
#IfWinActive

;Raises / lowers the volume with Alt+down / up -arrow
!Up::Send {Volume_Up 3}
!Down::Send {Volume_Down 3}

<^>!F1::
	Suspend, Permit
	Suspend, toggle
return

; -----------------------------------------------------------------------------
; Ideas for improvement
; * Use Capslock with a shift modifyer (+Capslock) and use Capslock for something else
; * VS: Remap Shift+Alt+F10 to Alt+Enter in VS to mimic ReSharpers add missing reference feature
; * VS: Use ugly open definition on AltGr + F (<^>!f::Ctrl+7+">of") See: http://www.alteridem.net/2007/09/11/quickly-findopen-a-file-in-visual-studio/
; * Check if it is better to use #UseHook / $ (currently only using it on Caps-Shift remapping)
