$PBExportHeader$uo_editmask.sru
forward
global type uo_editmask from editmask
end type
end forward

global type uo_editmask from editmask
integer width = 402
integer height = 112
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
event ue_char pbm_char
end type
global uo_editmask uo_editmask

type variables

end variables

event ue_char;string texto
texto=this.text
if integer(this.text)=0 or this.text=".00" then
	this.setmask(decimalmask!,"####") 
	return
end if
if  len(this.text)=1 then
	this.setmask(decimalmask!,"####,###.00") 
	this.text=texto
	this.selecttext( len(this.text)-2, 0)
end if	

end event

on uo_editmask.create
end on

on uo_editmask.destroy
end on

event constructor;this.setmask( NumericMask!,"###########")
end event

