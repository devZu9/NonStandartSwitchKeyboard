;--------------------------------------------------------------

ChangeStandartSwitchKey(key) {
    global
    StandartSwitchKey = %key%
    WriteVariables()
    Reload
}

ChangeRealSwitchKey(key) {
    global
    RealSwitchKey = %key%
    WriteVariables()
    Reload
}

;--------------------------------------------------------------
CapsLock::
if RealSwitchKey = CapsLock
{
	if StandartSwitchKey = CtrlShift
	{
		Send, {LCtrl Down}{Shift Down}{Shift Up}{LCtrl Up}
		Return
	}
	else 
	{
		Send, {Alt Down}{Shift Down}{Shift Up}{Alt Up}
		Return
	}
}
else
	{
		Send, {CapsLock}
	}
Return

;--------------------------------------------------------------
^LWin::
if RealSwitchKey = LeftWin
{
	Send, {LWin}
}
else
{
	Send, {LCtrl down}{LWin}{LCtrl up}  ; Down означает, что кнопка зажата, пока не будет Up
}
Return


LWin::
if RealSwitchKey = LeftWin
{
	if StandartSwitchKey = CtrlShift
	{
		Send, {LCtrl Down}{Shift Down}{Shift Up}{LCtrl Up}
		Return
	}
	else 
	{
		Send, {Alt Down}{Shift Down}{Shift Up}{Alt Up}
		Return
	}
}
else
	{
		Send, {LWin Down}
		Sleep, 300
		Send, {Lwin Up}
	}
Return

;--------------------------------------------------------------

Exit:
ExitApp