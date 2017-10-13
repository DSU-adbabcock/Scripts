#include <AutoItConstants.au3>
#include <Misc.au3>
#include <MsgBoxConstants.au3>
#include <IE.au3>

HotKeySet("{ESC}", "Terminate")

Func Terminate()
    Exit
 EndFunc

Send("{LWINDOWN}r{LWINUP}")
Sleep(500)
Send("control mmsys.cpl sounds")
Sleep(1000)
Send("{ENTER}") ;opens playback devices
Sleep(3000)
Send("{Down 12}{UP 2}{TAB 2}{ENTER}") ;selects default
Sleep(1000)
Send("{ESC}")
