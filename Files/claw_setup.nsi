; My first NSI installation script
; John Lam
; http://www.iunknown.com

; Initialize global settings

Name          "CLAW"
OutFile       "CLAW.exe"
SilentInstall "normal"

; Collect information about what directory to install into

InstallDir  $PROGRAMFILES\CLAW
DirText     "Choose a directory to install CLAW into."

Section "Core components"

  SetOutPath    $INSTDIR
  File          "..\Build\Weaver.dll"
  
  ; Register Weaver COM object
  
  RegDLL        "$INSTDIR\Weaver.dll"
  
  ; Add uninstall information in the form of registry keys

  WriteRegStr       HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\CLAW" "DisplayName"     "CLAW (remove only)"
  WriteRegStr       HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\CLAW" "UninstallString" '"$INSTDIR\uninstall.exe"'
  
  WriteUninstaller  "uninstall.exe"

SectionEnd

; Uninstaller section

UninstallText   "This will uninstall CLAW. Hit next to continue."

Section "Uninstall"

  ; Remove registry keys
  
  DeleteRegKey      HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\CLAW"

  ; Unregister Weaver COM object
  
  UnRegDLL      "$INSTDIR\Weaver.dll"
    
  ; Remove files
  
  Delete        "$INSTDIR\Weaver.dll"
  Delete        "$INSTDIR\Uninstall.exe"
  
  ; Remove directories
  
  RMDir         "$INSTDIR"
  
SectionEnd
