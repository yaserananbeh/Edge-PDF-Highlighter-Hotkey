# 📌 Edge PDF Highlighter Hotkeys

A simple AutoHotkey-based tool to highlight and unhighlight text inside Microsoft Edge’s built-in PDF viewer.

This tool gives you two fast keyboard shortcuts:

| Shortcut | Action |
|---------|--------|
| **Alt + S** | Highlight selected text |
| **Alt + D** | Remove highlight ("None") |

Works perfectly even though Edge does not expose normal keyboard shortcuts for PDF highlights.

---

## 🚀 Features

- No need to click the toolbar  
- Works directly inside PDF (after selecting text)  
- Extremely fast (almost instant)  
- No browser extension required  
- Includes a mouse-movement lock so the menu never misaligns  
- Portable → runs as a standalone `.exe`  

---

## 📥 Installation

### **Option 1 — Run the EXE (recommended for normal users)**

1. Download **`highlight.exe`** from the *Releases* page.  
2. Run it (no installation needed).  
3. It will stay in the background and activate the hotkeys automatically.

> You do **NOT** need AutoHotkey installed —  
> The `.exe` is fully standalone.

---

### **Option 2 — Run from source (.ahk)**

If you prefer using the script:

1. Install **AutoHotkey v2**  
2. Download **`highlight.ahk`**  
3. Double-click to run  

---

## 🎮 How to Use

### **Highlight text (yellow, default)**

1. Select any text inside a PDF in Microsoft Edge  
2. Press **Alt + S**  
3. Your text is instantly highlighted  

### **Remove highlight ("None")**

1. Select any previously highlighted text  
2. Press **Alt + D**  
3. Highlight is removed  

---

## 🧠 How it Works

Edge’s PDF viewer does not allow extensions or scripts to modify the highlight tool directly.  
This utility uses AutoHotkey to:

- Simulate a right-click on your selection  
- Open the highlight menu  
- Choose the correct option  
- Apply the highlight or remove it  

All operations are fully automated and very fast.

---

## 🖥 Hotkey Script (Full Source Code)

```ahk
#Requires AutoHotkey v2.0

#HotIf WinActive("ahk_exe msedge.exe")

; ALT + S = Apply highlight
!s::
{
    BlockInput("MouseMove")
    Click("right")
    Sleep(180)
    Send("{Enter}")
    Sleep(150)
    Send("{Enter}")
    Sleep(150)
    Send("{Enter}")
    BlockInput("MouseMoveOff")
}

; ALT + D = Remove highlight (None)
!d::
{
    BlockInput("MouseMove")
    Click("right")
    Sleep(200)
    Send("{Enter}")
    Sleep(150)
    Send("{Enter}")
    Sleep(150)
    Send("{Down 5}")
    Sleep(150)
    Send("{Enter}")
    Sleep(150)
    Send("{Enter}")
    BlockInput("MouseMoveOff")
}

#HotIf
