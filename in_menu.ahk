;---------- алиасы --------------------------------------------
SwitchToBlackIcon := Func("ChangeIconColor").Bind("black")
SwitchToWhiteIcon := Func("ChangeIconColor").Bind("white")

SelectCtrlShift := Func("ChangeStandartSwitchKey").Bind("CtrlShift")
SelectAltShift := Func("ChangeStandartSwitchKey").Bind("AltShift")
SelectLeftWin := Func("ChangeRealSwitchKey").Bind("LeftWin")
SelectCapsLock := Func("ChangeRealSwitchKey").Bind("CapsLock")

;--------------------------------------------------------------
Menu, Tray, NoStandard ; отключаем все стандартные пункты
Menu, Tray, Tip, Non Standart Switch Keyboard ; подсказка в трее при наведении

; отображение состояния может быть, когда-нибудь сделаю
; Menu, Tray, Add, Ctrt+Shift -> CapsLock, Exit
; Menu, Tray, Disable, Ctrt+Shift -> CapsLock
; Menu, Tray, Add, ; разделитель

; подменю выбора текущего стандартного переключения
Menu, StandartSwitchMenu, Add, Ctrl+Shift, % SelectCtrlShift
Menu, StandartSwitchMenu, Add, Alt+Shift, % SelectAltShift
Menu, Tray, Add, Текущее стандартное переключение, :StandartSwitchMenu

; подменю для выбора нестандартного переключения
Menu, RealSwitchMenu, Add, Левая Win, % SelectLeftWin
Menu, RealSwitchMenu, Add, CapsLock, % SelectCapsLock
Menu, Tray, Add, Назначить переключение, :RealSwitchMenu

; подменю выбора цвета иконок
Menu, ColorIconMenu, Add, Чёрные, % SwitchToBlackIcon
Menu, ColorIconMenu, Add, Белые, % SwitchToWhiteIcon
Menu, Tray, Add, Сменить цвет иконок в трее, :ColorIconMenu

Menu, Tray, Add, ; разделитель

Menu, Tray, Add, Выход, Exit

ChangeIconColor(color) {
    global
    ColorIcon = %color%
    WriteVariables()
    ChangeTrayIcon()
    Reload
}


;--------------------------------------------------------------
; эта секция используется для того, чтобы поставить нужные галочки в меню
; и тут нужно понимать, что функционал будет работать только после считавания
; параметров из ini файла.

MenuChecker() {
    global

    if StandartSwitchKey = CtrlShift
    {
        Menu, StandartSwitchMenu, Check, Ctrl+Shift
        Menu, StandartSwitchMenu, Uncheck, Alt+Shift
    }
    else
    {
        Menu, StandartSwitchMenu, Check, Alt+Shift
        Menu, StandartSwitchMenu, Uncheck, Ctrl+Shift
    }

    if RealSwitchKey = CapsLock
    {
        Menu, RealSwitchMenu, Check, CapsLock
        Menu, RealSwitchMenu, Uncheck, Левая Win
    }
    else
    {
        menu, RealSwitchMenu, Check, Левая Win
        menu, RealSwitchMenu, Uncheck, CapsLock
    }

    if ColorIcon = white
    {
        Menu, ColorIconMenu, Check, Белые
        Menu, ColorIconMenu, Uncheck, Чёрные
    }
    else
    {
        Menu, ColorIconMenu, Check, Чёрные
        Menu, ColorIconMenu, Uncheck, Белые
    }
}
;--------------------------------------------------------------