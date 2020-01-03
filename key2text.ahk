FileInstall, C:\TrayMinimizer.ahk, %A_ScriptDir%\TrayMinimizer.ahk, 1

#Include %A_ScriptDir%\TrayMinimizer.ahk
#SingleInstance, force

IniRead, F1Lido, %A_ScriptDir%\config.ini, Textos, F1
IniRead, F2Lido, %A_ScriptDir%\config.ini, Textos, F2
IniRead, F3Lido, %A_ScriptDir%\config.ini, Textos, F3
IniRead, F4Lido, %A_ScriptDir%\config.ini, Textos, F4
IniRead, F5Lido, %A_ScriptDir%\config.ini, Textos, F5
IniRead, F6Lido, %A_ScriptDir%\config.ini, Textos, F6
IniRead, F7Lido, %A_ScriptDir%\config.ini, Textos, F7
IniRead, F8Lido, %A_ScriptDir%\config.ini, Textos, F8
IniRead, F9Lido, %A_ScriptDir%\config.ini, Textos, F9
IniRead, F10Lido, %A_ScriptDir%\config.ini, Textos, F10
IniRead, F11Lido, %A_ScriptDir%\config.ini, Textos, F11
IniRead, F12Lido, %A_ScriptDir%\config.ini, Textos, F12

Gui, Add, Text, x12 y9 w900 h40, Digite a seguir os textos que voce deseja que sejam escritos ao pressionar as teclas correspondentes:

Gui, Add, Text, x12 y49 w190 h20, CTRL + F1
Gui, Add, Edit, x12 y69 w450 h40 vF1, %F1Lido%

Gui, Add, Text, x12 y119 w190 h20, CTRL + F2
Gui, Add, Edit, x12 y139 w450 h40 vF2, %F2Lido%

Gui, Add, Text, x12 y189 w190 h20, CTRL + F3
Gui, Add, Edit, x12 y209 w450 h40 vF3, %F3Lido%

Gui, Add, Text, x12 y259 w190 h20, CTRL + F4
Gui, Add, Edit, x12 y279 w450 h40 vF4, %F4Lido%

Gui, Add, Text, x12 y329 w190 h20, CTRL + F5
Gui, Add, Edit, x12 y349 w450 h40 vF5, %F5Lido%

Gui, Add, Text, x12 y399 w190 h20, CTRL + F6
Gui, Add, Edit, x12 y419 w450 h40 vF6, %F6Lido%

Gui, Add, Text, x482 y49 w190 h20, CTRL + F7
Gui, Add, Edit, x482 y69 w450 h40 vF7, %F7Lido%

Gui, Add, Text, x482 y119 w190 h20, CTRL + F8
Gui, Add, Edit, x482 y139 w450 h40 vF8, %F8Lido%

Gui, Add, Text, x482 y189 w190 h20, CTRL + F9
Gui, Add, Edit, x482 y209 w450 h40 vF9, %F9Lido%

Gui, Add, Text, x482 y259 w190 h20, CTRL + F10
Gui, Add, Edit, x482 y279 w450 h40 vF10, %F10Lido%

Gui, Add, Text, x482 y329 w190 h20, CTRL + F11
Gui, Add, Edit, x482 y349 w450 h40 vF11, %F11Lido%

Gui, Add, Text, x482 y399 w190 h20, CTRL + F12
Gui, Add, Edit, x482 y419 w450 h40 vF12, %F12Lido%

Gui, Add, Button, x721 y479 w100 h30, Confirmar
Gui, Add, Button, x834 y479 w100 h30, Cancelar

Gui, Show, x209 y153 h518 w956, Key2Text @ by Marcio Camara

TrayMinimizer.Init(false)

Return

ButtonCancelar:
    ExitApp

ButtonConfirmar:
    GuiControlGet, F1
    GuiControlGet, F2
    GuiControlGet, F3
    GuiControlGet, F4
    GuiControlGet, F5
    GuiControlGet, F6
    GuiControlGet, F7
    GuiControlGet, F8
    GuiControlGet, F9
    GuiControlGet, F10
    GuiControlGet, F11
    GuiControlGet, F12
    
    IniWrite, %F1%, %A_ScriptDir%\config.ini, Textos, F1
    IniWrite, %F2%, %A_ScriptDir%\config.ini, Textos, F2
    IniWrite, %F3%, %A_ScriptDir%\config.ini, Textos, F3
    IniWrite, %F4%, %A_ScriptDir%\config.ini, Textos, F4
    IniWrite, %F5%, %A_ScriptDir%\config.ini, Textos, F5
    IniWrite, %F6%, %A_ScriptDir%\config.ini, Textos, F6
    IniWrite, %F7%, %A_ScriptDir%\config.ini, Textos, F7
    IniWrite, %F8%, %A_ScriptDir%\config.ini, Textos, F8
    IniWrite, %F9%, %A_ScriptDir%\config.ini, Textos, F9
    IniWrite, %F10%, %A_ScriptDir%\config.ini, Textos, F10
    IniWrite, %F11%, %A_ScriptDir%\config.ini, Textos, F11
    IniWrite, %F12%, %A_ScriptDir%\config.ini, Textos, F12

    Msgbox, Textos salvos!
    Return

^F1::
    Send, %F1Lido%
    Return

^F2::
    Send, %F2Lido%
    Return
        
^F3::
    Send, %F3Lido%
    Return

^F4::
  Send, %F4Lido%
  Return

^F5::
  Send, %F5Lido%
  Return

^F6::
  Send, %F6Lido%
  Return

^F7::
  Send, %F7Lido%
  Return

^F8::
  Send, %F8Lido%
  Return

^F9::
  Send, %F9Lido%
  Return

^F10::
  Send, %F10Lido%
  Return

^F11::
  Send, %F11Lido%
  Return

^F12::
  Send, %F12Lido%
  Return