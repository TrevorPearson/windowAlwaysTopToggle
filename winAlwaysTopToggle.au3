;always on top
#include <AutoItConstants.au3>


;;Modify this if you want
$HOTKEY = "!`" ;ALT + `



HotKeySet($HOTKEY ,"toggleStateOfActiveWindow")

while 1
   sleep(10000)

WEnd


func toggleStateOfActiveWindow()

Local $hWnd = WinGetHandle("[ACTIVE]")
$title = WinGetTitle($hWnd)
ConsoleWrite("Title is " & $title & @crlf);
if (StringCompare(StringLeft($title,4),"TOP ")==0) Then
   $newTitle = StringTrimLeft($title,4)
   WinSetTitle($hWnd, "",$newTitle);
   WinSetOnTop($hWnd, "", $WINDOWS_NOONTOP)
   return
EndIf

 WinSetOnTop($hWnd, "", $WINDOWS_ONTOP)
 WinSetTitle($hWnd, "","TOP " & $title);


EndFunc
