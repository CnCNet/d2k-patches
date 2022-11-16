#include <windows.h>
#include <stdbool.h>
#include <stdint.h>
#include "dune2000.h"
#include "patch.h"
#include "ini.h"

uint32_t VQADisplayModeWidth;
uint32_t VQADisplayModeHeight;
bool CutsceneChangeResolution = true;

void SetVQADisplayModeRes()
{
    CutsceneChangeResolution = D2kIniGetBool("Options", "CutsceneChangeResolution", CutsceneChangeResolution);
    if (!CutsceneChangeResolution)
    {
        VQADisplayModeWidth = GameWidth;
        VQADisplayModeHeight = GameHeight;
        return;
    }
    
    if (EnumDisplaySettingsAImp && !GameHandlesClose) // disable for cnc-ddraw (GameHandlesClose)
    {
        DEVMODE dm;
        dm.dmSize = sizeof(DEVMODE);
        for (int mode = 0; EnumDisplaySettingsAImp(NULL, mode, &dm); mode++, dm.dmSize = sizeof(DEVMODE))
        {
            if (dm.dmPelsWidth == 640 && dm.dmPelsHeight == 400) break; //no need to continue here, this is what we are looking for!
            if (dm.dmPelsHeight > dm.dmPelsWidth || dm.dmPelsHeight < 400 || dm.dmPelsWidth < 640) continue;
                
            if (!VQADisplayModeWidth || !VQADisplayModeHeight || 
               (dm.dmPelsWidth < VQADisplayModeWidth && dm.dmPelsHeight < VQADisplayModeHeight))
            {
                VQADisplayModeWidth = dm.dmPelsWidth;
                VQADisplayModeHeight = dm.dmPelsHeight;
            }
        }
    }
    
    if (!VQADisplayModeWidth || !VQADisplayModeHeight)
    {
        VQADisplayModeWidth = 640;
        VQADisplayModeHeight = 400;
    }
}
