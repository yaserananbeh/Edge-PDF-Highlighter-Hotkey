#Requires AutoHotkey v2.0

#HotIf WinActive("ahk_exe msedge.exe")

; ALT + S = Apply highlight
!s::
{
    BlockInput("MouseMove")

    Click("right")
    Sleep(180)

    Send("{Enter}")      ; Highlight
    Sleep(150)
    Send("{Enter}")      ; Pick default color
    Sleep(150)
    Send("{Enter}")      ; Apply

    BlockInput("MouseMoveOff")
}

; ALT + D = Remove highlight (select "None")
!d::
{
    BlockInput("MouseMove")

    Click("right")
    Sleep(200)

    Send("{Enter}")      ; Open Highlight submenu
    Sleep(150)
    Send("{Enter}")      ; Open color list
    Sleep(150)

    Send("{Down 5}")     ; Move to the "None" color
    Sleep(150)

    Send("{Enter}")      ; Select "None"
    Sleep(150)

    Send("{Enter}")      ; Apply removal

    BlockInput("MouseMoveOff")
}

#HotIf
