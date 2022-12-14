;;
;; This file exists to define the locations of everything we know about the
;; vanilla exe.
;;
;; The idea is by separating knowledge about the vanilla exe from changes to it,
;; we make the code more clean. Also it means we don't need to hard-code the
;; symbols separately for C, C++, asm, etc.
;;
;; Symbols are defined with `setcglob` for C (remove leading underscore)
;;                     and  `setxglob` for C++ and C
;;

%include "macros/setsym.inc"

setcglob 0x004B2810, start

;; ### Variables ###

;Network settings
setcglob 0x4E3AEC, SendRate
setcglob 0x6B9460, ReconnectTimeOutToPlayer
setcglob 0x6B9644, InitialConnectTimeOut

setcglob 0x6B93E8, UnknownNetVar1 
setcglob 0x4E3AE8, UnknownNetVar2
setcglob 0x4E3B1C, UnknownNetVar3
setcglob 0x4E3AF0, UnknownNetVar4
setcglob 0x4E3AF4, UnknownNetVar5

setcglob 0x007984C4, NetworkGame ;bool
setcglob 0x004E3B10, NetworkType ;short
setcglob 0x007984C0, NetPlayerCount
setcglob 0x004F2898, NetPlayers

;Multiplayer settings
setcglob 0x004E3B00, NetUnitCount
setcglob 0x004E3B04, NetTechLevel
setcglob 0x004E3B08, NetStartingCredits
setcglob 0x004E3B0C, NetAIPlayers
setcglob 0x006B9834, NetCrates
setcglob 0x006B9838, NetWorms
setcglob 0x006B93F8, NetPlayerName
setcglob 0x006B9840, NetPlayerSide
setcglob 0x006B9844, NetPlayerColor
setcglob 0x006B9848, NetPlayerHandicap
setcglob 0x007975D0, NetIPAddress
setcglob 0x00797960, NetModemPhone
setcglob 0x004E8BF4, NetSerialComPort

setcglob 0x00797638, NetMap
setcglob 0x004F1018, LoginName

setcglob 0x006B87D0, NetPlayersStartingCredits
setcglob 0x006B87C8, NetPlayersTechLevel
setcglob 0x00798630, NetPlayerNamesArray

setcglob 0x006B922D, NetPlayersColor ;Actually there is more than just the colors, not sure what... struct size 60byte, first byte = color
setcglob 0x006B922E, NetPlayersHandicap ;Same struct as the colors, byte 2

setcglob 0x006F9840, MissionMap

;Game settings
setcglob 0x004E7ACC, FirstTimePlay
setcglob 0x004EB030, ScrollRate
setcglob 0x004E3B18, GameSpeed
setcglob 0x004EB01C, GameBitsPerPixel
setcglob 0x004E5FC4, SFXVolume
setcglob 0x004E5FC8, MusicVolume
setcglob 0x005178C4, DebugMode
setcglob 0x005178C8, DebugModeBlocks
setcglob 0x004eb008, FullScreen
setcglob 0x00797e30, ForceNoCD
setcglob 0x004EB004, MoviesEnabled ; -M = false
setcglob 0x004EB00C, SoundsEnabled ; -S = false
setcglob 0x005178A4, JumpToWOLLogin ; -N = true
setcglob 0x007984B4, Force8Bit ; -8 = true
setcglob 0x007984B8, Force16Bit ; -6 = true
setcglob 0x004EB010, VideoBackBuffer ; -F = false
setcglob 0x007984E4, Force480Height ; -G = true

;WOL
setcglob 0x004DB9D4, AllowFindUser
setcglob 0x004DB9D8, AllowPageUser
setcglob 0x004F3D00, LanguageFilter
setcglob 0x004F3D04, ShowAllGames
setcglob 0x004F3CF0, Microphone

setcglob 0x004E8BEC, WOLMaxPlayers
setcglob 0x004F3D3C, WOLTournamentGame
setcglob 0x004F3D40, WOLPrivateGame
setcglob 0x004F3D38, WOLGameId
setcglob 0x004F3D30, GameStartTickCount
setcglob 0x004F3D34, GameEndTickCount

;Screen display stuff
setcglob 0x004eb020, ScreenWidth
setcglob 0x004eb024, ScreenHeight
setcglob 0x004EB028, GameWidth
setcglob 0x004EB02C, GameHeight
setcglob 0x004E4214, CreditsUIPosX
setcglob 0x004E420C, PowerBarUIPosX
setcglob 0x004E4210, PowerBarUIPosY
setcglob 0x004E4204, SideBarPanelRightUIPosX
setcglob 0x004E41FC, SideBarPanelLeftUIPosX
setcglob 0x004E4200, SideBarPanelsPosY
setcglob 0x004E41EC, SideBarIconCount
setcglob 0x004E41F8, SideBarIconHeight
setcglob 0x004E41E4, MiniMapUIPosX
setcglob 0x004E41E0, SideBarWidth
setcglob 0x005162F4, SideBarLDownArrowVisible 
setcglob 0x005162DC, SideBarLUpArrowVisible 
setcglob 0x00516324, SideBarRDownArrowVisible 
setcglob 0x005163B4, SideBarRUpArrowVisible 
setcglob 0x005163FC, SideBarButtonMainMenuVisible
setcglob 0x00516414, SideBarButtonMainMenu2Visible
setcglob 0x0051642C, SideBarButtonPurchaseVisible
setcglob 0x00786D48, BattleFieldWidth
setcglob 0x006DC538, BattleFieldHeight
setcglob 0x004E41DC, OptionsBarHeight
setcglob 0x00798538, BattleFieldPosX
setcglob 0x0079853C, BattleFieldPosY
setcglob 0x00798540, CurrentCursorId

;DisableDebugFileFormats {
setcglob 0x004EB014, DisableDebugFileFormats  ; bool
;Colours.bin -> colours.txt
;vars.bin -> vars.dat
;font.bin -> font.map
;font.fnt -> font.bmp
;mouse.r16/mouse.r8 -> mouse48.bmp
;circles.bin -> SCircles.bmp
;templates.bin -> many different .bmp files...
; ...and much more...
; }
setcglob 0x004EB000, UseBinaryMapFiles

;rules
setcglob 0x006B8818, harvestUnloadDelay
setcglob 0x006B881C, harvestBlobValue
setcglob 0x006B8820, harvestLoadSpiceDelay
setcglob 0x006B8824, starportUpdateDelay
setcglob 0x006B8828, starportStockIncreaseDelay
setcglob 0x006B882C, starportStockIncreaseProb
setcglob 0x006B8830, starportCostVariationPercent
setcglob 0x006B8834, starportFrigateDelay
setcglob 0x006B8838, refineryExplosionOffsetX
setcglob 0x006B883C, refineryExplosionOffsetY
setcglob 0x006B8840, HarvesterDriveDistance
setcglob 0x006B8844, RepairDriveDistance
setcglob 0x006B8848, BuildingRepairValue
setcglob 0x006B884C, UnitRepairValue
setcglob 0x006B8850, SinglePlayerDelay
setcglob 0x006B8854, NumberOfFremen
setcglob 0x006B8855, SandWormAppetite
setcglob 0x006B8856, SandWormInitialSleep
setcglob 0x006B8857, SandWormFedSleep
setcglob 0x006B8858, SandWormShotSleep
setcglob 0x006B8859, NumberOfCrates
setcglob 0x006B885A, CratesPerPlayer
setcglob 0x006B885B, DevastatorExplodeDelay
setcglob 0x006B885C, IgnoreDistance
setcglob 0x006B8860, CrateCash
setcglob 0x006B8864, ShowWarnings
setcglob 0x006B8865, DeathHandAccuracy

;others
setcglob 0x004EB048, MousePositionX
setcglob 0x004EB04C, MousePositionY

setcglob 0x00798544, MySideID
setcglob 0x006B8274, Win
setcglob 0x006B8278, Lose
setcglob 0x004E8BF0, DifficultyLevel
setcglob 0x00797E34, GameType
setcglob 0x004DB9E0, GameEndState
setcglob 0x004DFB08, GameState
setcglob 0x008CD51C, OSMajorVersion
setcglob 0x008CD520, OSMinorVersion
setcglob 0x004ED870, RandSeed
setcglob 0x0079759C, CUIManagerObject
setcglob 0x004DE610, MissionNumber
setcglob 0x005173F4, GameTicks
setcglob 0x006B9864, LimitedModelRate
setcglob 0x005178B4, PointerToMainImage
setcglob 0x005135B8, MusicResourcePath
setcglob 0x00795608, SoundClassObject
setcglob 0x006DC470, MissionMapData
setcglob 0x005136E8, MapsResourcePath
setcglob 0x00513650, MissionsResourcePath
setcglob 0x00513488, ResourcePath
setcglob 0x00513520, MoviesResourcePath
setcglob 0x00798390, KeyIsDown1
setcglob 0x00797E78, KeyIsDown2
setcglob 0x00782AA0, SpawnLocationUsedBoolArray
setcglob 0x00517DE8, gGameMapWidth
setcglob 0x00517DEC, gGameMapHeight
setcglob 0x00797A98, CurrentSoundTrack
setcglob 0x006B87C0, gBuildingsExist
setcglob 0x006B8268, gUnitsExist
setcglob 0x004E3B14, MyCurrentFrameRate
setcglob 0x006B9518, NetMessageString
setcglob 0x004DEDB8, CreditsScreenWidth
setcglob 0x004DEDB4, CreditsScreenTop
setcglob 0x004DEDBC, CreditsScreenBottom
setcglob 0x006B63C8, GameOver
setcglob 0x007984D4, BitsPerPixelChanged
setcglob 0x007984d8, MenuDraw_FromTopPixel		;       int MenuDraw::FromTopPixel
setcglob 0x00798830, Diplomacy
setcglob 0x00798510, WindowActivated

;Side specifics
setcglob 0x007BCACC, AtreidesMoney
setcglob 0x007BCACC+(158096*1), HarkonnenMoney
setcglob 0x007BCACC+(158096*2), OrdosMoney
setcglob 0x007BCACC+(158096*3), EmperorMoney
setcglob 0x007BCACC+(158096*4), FremenMoney
setcglob 0x007BCACC+(158096*5), SmugglersMoney
setcglob 0x007BCACC+(158096*6), MercenariesMoney
setcglob 0x007BCACC+(158096*7), SandwormMoney


;; ### Functions ###

setcglob 0x005A3BB0, WinMain

; drawing
setcglob 0x004308f0, Image__DrawLineClipTImage		;       Image__DrawLineClipTImage(int,int,int,int,int,int,int)
setcglob 0x004326b0, Image__BlitTImage_4326B0			;       Image__BlitTImage_4326B0
setcglob 0x0042eae0, Image__GetBitmapData			;       Image__GetBitmapData(char,int,int,int)
setcglob 0x0042ebe0, Image__LoadBitmap				;       Image__LoadBitmap(char,int,long,int,int,int,int)
setcglob 0x0042ef90, Image__CreateTImage			;       Image__CreateTImage(int width, int height, int, char *FilePath)
setcglob 0x0042f1d0, Image__CreateTImageWithTarga	;       Image__CreateTImageWithTarga(char *FilePath,int,int,int,int,int)
setcglob 0x0042f430, Image__CreateSurfaceWithBitmap	;       Image__CreateSurfaceWithBitmap(char,char,int,long,int,int,int,char,int,int)
setcglob 0x00430860, Image__ClearTImage				;       Image__ClearTImage(int,int,int)
setcglob 0x0042e8b0, Image__GetPaletteFromBitmap	;       Image__GetPaletteFromBitmap(lpFilename,int)
setcglob 0x0042e660, Image__LoadTarga					;       Image__LoadTarga(char *FilePath, int,int,int,int width, int heigh)
setcglob 0x0042e810, Image__LoadTarga2				;       Image__LoadTarga(char *FilePath,int,int)
setcglob 0x004305F0, Image__BlitClipTImage
setcglob 0x00491330, Load_Image
setcglob 0x00427690, Display__DrawStarportSideBarMenu
setcglob 0x004278A0, Display__DrawUpgradeSideBarMenu 
setcglob 0x00426E80, Display__DrawNormalSideBarMenu
setcglob 0x00492A70, DrawMenu

; rules
setcglob 0x004544E0, Mission__LoadVarsFile


; Others
setcglob 0x0048DC10, Data__GetTextId			; (char *key, int unk)
setcglob 0x0048DCC0, Data__GetTextString			; (int id, int unk)
setcglob 0x004184A0, WOL__OpenWebsite				; (char *URL)
setcglob 0x0042DC00, Graphlib__TextOnScreen
setcglob 0x0042DD50, Graphlib__DrawRightAlignedText
setcglob 0x0042DD90, Graphlib__DrawTextWithBlackShadow
setcglob 0x0042E450, Graphlib__LoadFontFile
setcglob 0x00459450, Model__GenerateUnitMoveOrder
setcglob 0x004596F0, Model__GenerateUnitAttackUnitOrder
setcglob 0x00455FC0, Model__BuildBuildingPick
setcglob 0x00455510, Model__HandleGameLoopEvents
setcglob 0x0045BF00, Model__ExecuteGameEvent
setcglob 0x0045B7E0, Model__ResetVars
setcglob 0x00478C20, CUIManager__LoadDune2000Cfg
setcglob 0x00478FA0, CUIManager__SaveDune2000Cfg
setcglob 0x00482690, CUIManager__GetCD					 ;       Get_CD::Get_CD(void)
setcglob 0x004734E0, CUIManager__JumpToMenu 				;(char *menu)
setcglob 0x00480F30, CUIManager__CreateWigNet
setcglob 0x00479E80, CUIManager__StartGame
setcglob 0x004752C0, CUIManager__LoadMission
setcglob 0x0047BAE0, CUIManager__SendInGameMsgTo
setcglob 0x00454E00, Mission__LoadTechposFile
setcglob 0x0044F8E0, Mission__LoadObjectives
setcglob 0x00453B90, Mission__CheckEvents
setcglob 0x0040D2D0, WOL__SendGameResultsToServer
setcglob 0x00417C40, WOL__StartGuestINetGame
setcglob 0x00417E50, WOL__StartHostINetGame
setcglob 0x00460C80, Setup__LoadUIBBFile
setcglob 0x00460EC0, Setup__LoadUI_LanguageFile
setcglob 0x00466140, Setup__LoadGraphicsFile
setcglob 0x004A4660, Side__AsPointer ; (int house)
setcglob 0x0046E6B0, Side__BlowupAll
setcglob 0x0046EA50, Side__SurrenderAbort
setcglob 0x004700E0, Sound__PlayMusic
setcglob 0x0046FD90, Sound__LoadMusicFile
setcglob 0x004700B0, Sound__SetMusicVolume
setcglob 0x0046F820, Sound__PlaySample
setcglob 0x0044C520, Map__SetDeadOrder
setcglob 0x0044C4F0, Map__PlayerDefeated
setcglob 0x0044F4D0, Memory__HeapAllocWrapper
setcglob 0x004BC5B0, stat
setcglob 0x004A39E0, Parse_Command_Line
setcglob 0x004B1890, cinit
setcglob 0x00402FF0, IsLocalIp
setcglob 0x00411E70, IsCurrentlyShown
setcglob 0x004A31D0, GameWindowProcedure
setcglob 0x0042B590, Game__ShowErrorAndExit
setcglob 0x00492EB0, AbortGame

; winapi
setcglob 0x008CF5EC, _imp__LoadLibraryA
setcglob 0x008CF584, _imp__GetProcAddress
setcglob 0x008CF598, _imp__GetStdHandle
setcglob 0x008CF4E4, _imp__WriteFile
setcglob 0x008CF4F8, _imp__OutputDebugStringA
setcglob 0x008CF498, _imp__CreatePolygonRgn
setcglob 0x008CF510, _imp__GetTickCount
setcglob 0x008CF714, _imp__recvfrom
setcglob 0x008CF718, _imp__sendto
setcglob 0x008CF704, _imp__htonl
setcglob 0x008CF738, _imp__htons
setcglob 0x008CF6FC, _imp__gethostbyname
setcglob 0x008CF734, _imp__socket
setcglob 0x008CF500, _imp__GetLastError
setcglob 0x008CF508, _imp__GetModuleHandleA
setcglob 0x008CF6E8, _imp__timeGetTime
setcglob 0x008CF69C, _imp__DefWindowProcA
setcglob 0x008CF544, _imp__FindFirstFileA
setcglob 0x008CF540, _imp__FindClose
setcglob 0x008CF554, _imp__FindNextFileA
setcglob 0x008CF4E8, _imp__Sleep
setcglob 0x008CF54C, _imp__GetModuleFileNameA
setcglob 0x008CF6F4, _imp__timeBeginPeriod
setcglob 0x008CF6F0, _imp__timeEndPeriod
setcglob 0x008CF698, _imp__MessageBoxA  
setcglob 0x008CF6C0, _imp__ShowCursor
setcglob 0x008CF61C, _imp__GetCurrentProcess
setcglob 0x008CF578, _imp__ExitProcess

; clib
setcglob 0x004B15B0, vsprintf
setcglob 0x004B0670, sprintf
setcglob 0x004B2B60, strlen
setcglob 0x004b1700, tolower
setcglob 0x004b2ad0, strcmp
setcglob 0x004b0e30, malloc
setcglob 0x004ba640, calloc
setcglob 0x004b29e0, strcpy
setcglob 0x004b0ee0, free
setcglob 0x004b07a0, atoi
setcglob 0x004b08b0, strtok
setcglob 0x004b0fd0, fopen
setcglob 0x004b0ff0, fclose
setcglob 0x004b1070, fread
setcglob 0x004b11b0, fwrite
setcglob 0x004b29f0, strcat
setcglob 0x004b13a0, strncmp
setcglob 0x004bcb20, strcmpi
setcglob 0x004b1b20, memcpy
setcglob 0x004b2be0, memset
setcglob 0x004B07B0, strncpy
setcglob 0x004B1810, rand
setcglob 0x004B1300, fseek
setcglob 0x004B6A80, ftell
setcglob 0x004BD490, strrchr
setcglob 0x004B2030, fprintf

; imports
;Address  Ordinal Name                               Library 
;-------  ------- ----                               ------- 
;008CF464         RegCloseKey                        ADVAPI32
;008CF468         RegOpenKeyExA                      ADVAPI32
;008CF46C         RegQueryValueExA                   ADVAPI32
;008CF470         RegSetValueExA                     ADVAPI32
;008CF474         RegOpenKeyA                        ADVAPI32
;008CF47C         DirectDrawCreate                   DDRAW   
;008CF484 4       __imp_DirectPlayLobbyCreateA       DPLAYX  
;008CF488 1       __imp_DirectPlayCreate             DPLAYX  
;008CF490         DirectSoundCreate                  DSOUND  
;008CF498         CreatePolygonRgn                   GDI32   
;008CF49C         GetStockObject                     GDI32   
;008CF4A0         PtInRegion                         GDI32   
;008CF4A4         TextOutA                           GDI32   
;008CF4A8         DeleteObject                       GDI32   
;008CF4AC         GetDeviceCaps                      GDI32   
;008CF4B4         FileTimeToLocalFileTime            KERNEL32
;008CF4B8         HeapCreate                         KERNEL32
;008CF4BC         VirtualFree                        KERNEL32
;008CF4C0         LeaveCriticalSection               KERNEL32
;008CF4C4         EnterCriticalSection               KERNEL32
;008CF4C8         InitializeCriticalSection          KERNEL32
;008CF4CC         DeleteCriticalSection              KERNEL32
;008CF4D0         InterlockedDecrement               KERNEL32
;008CF4D4         InterlockedIncrement               KERNEL32
;008CF4D8         GetCommandLineA                    KERNEL32
;008CF4DC         GetVersion                         KERNEL32
;008CF4E0         GetStartupInfoA                    KERNEL32
;008CF4E4         WriteFile                          KERNEL32
;008CF4E8         Sleep                              KERNEL32
;008CF4EC         MultiByteToWideChar                KERNEL32
;008CF4F0         WideCharToMultiByte                KERNEL32
;008CF4F4         lstrlenA                           KERNEL32
;008CF4F8         OutputDebugStringA                 KERNEL32
;008CF4FC         CloseHandle                        KERNEL32
;008CF500         GetLastError                       KERNEL32
;008CF504         CreateFileA                        KERNEL32
;008CF508         GetModuleHandleA                   KERNEL32
;008CF50C         HeapDestroy                        KERNEL32
;008CF510         GetTickCount                       KERNEL32
;008CF514         SetEvent                           KERNEL32
;008CF518         ResetEvent                         KERNEL32
;008CF51C         WaitForMultipleObjects             KERNEL32
;008CF520         CreateEventA                       KERNEL32
;008CF524         GetExitCodeProcess                 KERNEL32
;008CF528         CreateProcessA                     KERNEL32
;008CF52C         CreateDirectoryA                   KERNEL32
;008CF530         MoveFileA                          KERNEL32
;008CF534         DeleteFileA                        KERNEL32
;008CF538         HeapFree                           KERNEL32
;008CF53C         GetProcessHeap                     KERNEL32
;008CF540         FindClose                          KERNEL32
;008CF544         FindFirstFileA                     KERNEL32
;008CF548         GetDriveTypeA                      KERNEL32
;008CF54C         GetModuleFileNameA                 KERNEL32
;008CF550         RtlUnwind                          KERNEL32
;008CF554         FindNextFileA                      KERNEL32
;008CF558         GetVolumeInformationA              KERNEL32
;008CF55C         GetVersionExA                      KERNEL32
;008CF560         GlobalFree                         KERNEL32
;008CF564         GlobalUnlock                       KERNEL32
;008CF568         GlobalHandle                       KERNEL32
;008CF56C         GlobalLock                         KERNEL32
;008CF570         GlobalAlloc                        KERNEL32
;008CF574         GlobalMemoryStatus                 KERNEL32
;008CF57C         VirtualAlloc                       KERNEL32
;008CF580         GetLogicalDriveStringsA            KERNEL32
;008CF584         GetProcAddress                     KERNEL32
;008CF588         ReadFile                           KERNEL32
;008CF58C         SetFilePointer                     KERNEL32
;008CF590         LCMapStringA                       KERNEL32
;008CF594         LCMapStringW                       KERNEL32
;008CF598         GetStdHandle                       KERNEL32
;008CF59C         GetLocalTime                       KERNEL32
;008CF5A0         FlushFileBuffers                   KERNEL32
;008CF5A4         UnhandledExceptionFilter           KERNEL32
;008CF5A8         FreeEnvironmentStringsA            KERNEL32
;008CF5AC         FreeEnvironmentStringsW            KERNEL32
;008CF5B0         GetEnvironmentStrings              KERNEL32
;008CF5B4         GetEnvironmentStringsW             KERNEL32
;008CF5B8         GetCPInfo                          KERNEL32
;008CF5BC         GetACP                             KERNEL32
;008CF5C0         GetOEMCP                           KERNEL32
;008CF5C4         SetHandleCount                     KERNEL32
;008CF5C8         GetFileType                        KERNEL32
;008CF5CC         GetStringTypeA                     KERNEL32
;008CF5D0         GetStringTypeW                     KERNEL32
;008CF5D4         SetUnhandledExceptionFilter        KERNEL32
;008CF5D8         IsBadReadPtr                       KERNEL32
;008CF5DC         IsBadWritePtr                      KERNEL32
;008CF5E0         IsBadCodePtr                       KERNEL32
;008CF5E4         SetStdHandle                       KERNEL32
;008CF5E8         GetTimeZoneInformation             KERNEL32
;008CF5EC         LoadLibraryA                       KERNEL32
;008CF5F0         SetEndOfFile                       KERNEL32
;008CF5F4         CompareStringA                     KERNEL32
;008CF5F8         CompareStringW                     KERNEL32
;008CF5FC         SetEnvironmentVariableA            KERNEL32
;008CF600         GetFullPathNameA                   KERNEL32
;008CF604         GetCurrentDirectoryA               KERNEL32
;008CF608         FileTimeToSystemTime               KERNEL32
;008CF60C         TerminateProcess                   KERNEL32
;008CF610         HeapAlloc                          KERNEL32
;008CF614         HeapReAlloc                        KERNEL32
;008CF618         GetDiskFreeSpaceA                  KERNEL32
;008CF620         SetVolumeLabelA                    KERNEL32
;008CF62C         FindExecutableA                    SHELL32 
;008CF634         PostMessageA                       USER32  
;008CF638         GetDlgItem                         USER32  
;008CF63C         SetFocus                           USER32  
;008CF640         EndDialog                          USER32  
;008CF644         EndPaint                           USER32  
;008CF648         SendDlgItemMessageA                USER32  
;008CF64C         DialogBoxParamA                    USER32  
;008CF650         PtInRect                           USER32  
;008CF654         SetCursorPos                       USER32  
;008CF658         IntersectRect                      USER32  
;008CF65C         SetRect                            USER32  
;008CF660         wsprintfA                          USER32  
;008CF664         SetForegroundWindow                USER32  
;008CF668         GetUpdateRect                      USER32  
;008CF66C         FillRect                           USER32  
;008CF670         ShowWindow                         USER32  
;008CF674         DispatchMessageA                   USER32  
;008CF678         PeekMessageA                       USER32  
;008CF67C         TranslateMessage                   USER32  
;008CF680         LoadStringA                        USER32  
;008CF684         SendMessageA                       USER32  
;008CF688         KillTimer                          USER32  
;008CF68C         SetTimer                           USER32  
;008CF690         GetWindowDC                        USER32  
;008CF694         ReleaseDC                          USER32  
;008CF69C         DefWindowProcA                     USER32  
;008CF6A0         GetClassNameA                      USER32  
;008CF6A4         GetWindowRect                      USER32  
;008CF6A8         EnumWindows                        USER32  
;008CF6AC         CloseWindow                        USER32  
;008CF6B0         InvalidateRect                     USER32  
;008CF6B4         GetDesktopWindow                   USER32  
;008CF6B8         UpdateWindow                       USER32  
;008CF6BC         RegisterClassA                     USER32  
;008CF6C0         ShowCursor                         USER32  
;008CF6C4         CreateWindowExA                    USER32  
;008CF6C8         LoadIconA                          USER32  
;008CF6CC         WaitForInputIdle                   USER32  
;008CF6D0         FindWindowA                        USER32  
;008CF6D4         GetTopWindow                       USER32  
;008CF6D8         BeginPaint                         USER32  
;008CF6E0         timeSetEvent                       WINMM   
;008CF6E4         waveOutGetNumDevs                  WINMM   
;008CF6E8         timeGetTime                        WINMM   
;008CF6EC         timeKillEvent                      WINMM     
;008CF6FC 52      __imp_gethostbyname                WSOCK32 
;008CF700 2       __imp_bind                         WSOCK32 
;008CF704 8       __imp_htonl                        WSOCK32 
;008CF708 57      __imp_gethostname                  WSOCK32 
;008CF70C 21      __imp_setsockopt                   WSOCK32 
;008CF710 7       __imp_getsockopt                   WSOCK32 
;008CF714 17      __imp_recvfrom                     WSOCK32 
;008CF718 20      __imp_sendto                       WSOCK32 
;008CF71C 14      __imp_ntohl                        WSOCK32 
;008CF720 116     __imp_WSACleanup                   WSOCK32 
;008CF724 115     __imp_WSAStartup                   WSOCK32 
;008CF728 101     __imp_WSAAsyncSelect               WSOCK32 
;008CF72C 108     __imp_WSACancelAsyncRequest        WSOCK32 
;008CF730 3       __imp_closesocket                  WSOCK32 
;008CF734 23      __imp_socket                       WSOCK32 
;008CF738 9       __imp_htons                        WSOCK32 
;008CF73C 15      __imp_ntohs                        WSOCK32 
;008CF744         _AIL_set_sample_position@8         mss32   
;008CF748         _AIL_set_sample_pan@8              mss32   
;008CF74C         _AIL_set_sample_volume@8           mss32   
;008CF750         _AIL_stop_sample@4                 mss32   
;008CF754         _AIL_end_sample@4                  mss32   
;008CF758         _AIL_set_sample_file@12            mss32   
;008CF75C         _AIL_set_preference@8              mss32   
;008CF760         _AIL_last_error@0                  mss32   
;008CF764         _AIL_start_sample@4                mss32   
;008CF768         _AIL_waveOutOpen@16                mss32   
;008CF76C         _AIL_startup@0                     mss32   
;008CF770         _AIL_allocate_sample_handle@4      mss32   
;008CF774         _AIL_init_sample@4                 mss32   
;008CF778         _AIL_sample_status@4               mss32   
;008CF77C         _AIL_sample_volume@4               mss32   
;008CF780         _AIL_load_sample_buffer@16         mss32   
;008CF784         _AIL_sample_buffer_ready@4         mss32   
;008CF788         _AIL_set_sample_playback_rate@8    mss32   
;008CF78C         _AIL_set_sample_type@12            mss32   
;008CF790         _AIL_minimum_sample_buffer_size@12 mss32   
;008CF794         _AIL_shutdown@0                    mss32   
;008CF798         _AIL_set_sample_loop_count@8       mss32   
;008CF7A0         OleInitialize                      ole32   
;008CF7A4         CoCreateInstance                   ole32   
;008CF7A8         OleUninitialize                    ole32   
