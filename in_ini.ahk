ReadVariables() {
    global
    IniRead, StandartSwitchKey, nssk.ini, Main, StandartSwitchKey
    IniRead, RealSwitchKey, nssk.ini, Main, RealSwitchKey
    IniRead, ColorIcon, nssk.ini, Main, ColorIcon
}


WriteVariables() {
    global
    IniWrite, %StandartSwitchKey%, nssk.ini, Main, StandartSwitchKey
    IniWrite, %RealSwitchKey%, nssk.ini, Main, RealSwitchKey
    IniWrite, %ColorIcon%, nssk.ini, Main, ColorIcon
}

