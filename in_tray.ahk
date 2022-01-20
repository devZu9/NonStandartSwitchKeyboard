ChangeTrayIcon() {
    global
    if ColorIcon = white 
    {
        IconIdOffset = 5
    } 
    else 
    {
        IconIdOffset = 0
    }
    

    if (StandartSwitchKey = "AltShift" AND RealSwitchKey = "CapsLock") 
    {
        NumIcon := 1 + IconIdOffset
    }
    if (StandartSwitchKey = "AltShift" AND RealSwitchKey = "LeftWin") 
    {
        NumIcon := 2 + IconIdOffset
    }
    if (StandartSwitchKey = "CtrlShift" AND RealSwitchKey = "CapsLock") 
    {
        NumIcon := 3 + IconIdOffset
    }
    if (StandartSwitchKey = "CtrlShift" AND RealSwitchKey = "LeftWin") 
    {
        NumIcon := 4 + IconIdOffset
    }
    Menu, Tray, Icon, icons.dll, %NumIcon%
}
