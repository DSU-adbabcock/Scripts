#include <AutoItConstants.au3>
#include <Misc.au3>
#include <MsgBoxConstants.au3>

HotKeySet("{ESC}", "Terminate")

Func Terminate()
    Exit
EndFunc

Send("{LWINDOWN}r{LWINUP}")
Sleep(100)
Send("ms-settings:display{ENTER}") ;opens display settings
Sleep(1000)
Send("{LWINDOWN}{UP}{LWINUP}") ;maximizes screen
Sleep(100)
MouseClick($MOUSE_CLICK_LEFT, 750, 320, 1) ;selects main monitor
Sleep(100)
Send("{SHIFTDOWN}{TAB 7}{SHIFTUP}{ENTER}") ;selects adapter properties
Sleep(750)
Send("{SHIFTDOWN}{TAB}{SHIFTUP}{RIGHT}") ;selects monitor tab
Sleep(100)
Send("{SHIFTDOWN}{TAB 4}{SHIFTUP}{DOWN 10}{ENTER}") ;scrolls to 144hz and selects
Send("{TAB 4}{ENTER}") ;hits apply
Sleep(100)
Send("{LEFT}{ENTER}") ;yes I want to keep settings
Sleep(100)
Send("{ALTDOWN}{SPACE}{ALTUP}{DOWN}{ENTER}") ;closes adapter window
Sleep(100)
Send("{ALTDOWN}{F4}{ALTUP}") ;closes other menu



