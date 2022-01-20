;-----Инициализация
#Persistent 					; Скрипт не выгружается
#SingleInstance ignore			; Запрет повторного запуска

; ^F1 - означает CTRL + F1
; #F2 - означает Win + F2
; !F3 - означает Alt + F3
; +F4 - означает Shift + F4
; подробнее тут http://www.script-coding.com/AutoHotkey/Hotkeys.html
; тут http://www.script-coding.com/AutoHotkey/KeyList.html
; и тут http://www.script-coding.com/AutoHotkey/Send.html

;--------------------------------------------------------------
SetStoreCapslockMode, Off	; чтобы выключался CapsLock, когда надо

#Include in_ini.ahk			; подключаем работу с INI-файлами
ReadVariables()

#Include in_menu.ahk		; подключаем меню
#Include in_tray.ahk		; подключаем управление треем

MenuChecker()
ChangeTrayIcon()

#Include, in_base.ahk		; основная часть программы