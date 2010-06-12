; sv_dvorak.ahk
; v1.2, 2008-04-15
;
; This is an AutoHotkey script (www.autohotkey.com) for the sv_dvorak
; keyboard layout by Thomas Lundqvist. See:
;
;   http://lundqvist.dyndns.org/sv_dvorak/
;
; It remaps the normal Swedish keyboard driver. So make sure you are using
; the regular Swedish keyboard driver before activating this script.
;
; Rename this script to AutoHotkey.ahk to make it the default one to open
; for AutoHotkey.
;
; Thomas Lundqvist, tlundqvist@acm.org

#UseHook On

; Top row:

; These seem to work ok, some are dead keys but I can live with that:
§::Send '
+½::Send {~}
¤::Send $
&::Send {^}
/::Send &
(::Send *
)::Send (
=::Send )
+::Send [
+?::Send {{}
SC00D::Send `=
+SC00D::Send {+}
;SC00D::Send ]
;+SC00D::Send {}}

; Second row:

q::å
w::Send `,
+W::Send <
e::Send .
+E::Send >
r::p
t::y
y::f
u::g
i::c
o::r
p::l
å::Send /
+Å::Send ?
SC01B::Send `;
+SC01B::Send :
;SC01B::Send `=
;+SC01B::Send {+}

; Third row:

s::o
d::e
f::u
g::i
h::d
j::h
k::t
l::n
ö::s
ä::Send -
+Ä::Send _
'::Send ]
+*::Send {}}
;'::Send `;
;+*::Send :

; Bottom row:

<::Send {Blind}ö
>::Send {Blind}Ö
z::ä
x::q
c::j
v::k
b::x
n::b
,::Send {Blind}w
`;::Send {Blind}W
.::Send {Blind}v
:::Send {Blind}V
-::Send {Blind}z
_::Send {Blind}Z

; Alt-Gr stuff:

<^>!§::Send ``
<^>!q::Send {´}
<^>!z::Send ``
<^>!<::Send ¨
<^>!ä::Send |
<^>!SC01B::Send \
<^>!e::Send €

; Some extra that is not covered by remapping above:

!,::Send !w
!.::Send !v
!-::Send !z

^,::Send ^w
^.::Send ^v
^-::Send ^z

^+ä::Send ^_
^ä::Send ^-

<^>!F2::
	Suspend, Permit
	Suspend, toggle
return
