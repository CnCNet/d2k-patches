#include <windows.h>
#include <stdio.h>
#include "macros/patch.h"
#include "dune2000.h"
#include "patch.h"
#include "ini.h"
#include "rules.h"
#include "utils.h"

LPCTSTR rulesIni = ".\\rules.ini";
LPCTSTR rulesSpawnIni = ".\\rules-spawn.ini";

static void LoadVars(LPCTSTR fileName);
static void LoadMultiPlayerSettings(LPCTSTR fileName);

void LoadRulesFromMap()
{
    Mission__LoadVarsFile();
    LoadVars(SpawnerActive ? rulesSpawnIni : rulesIni);
    char mapIniPath[256];
    sprintf(mapIniPath, ".\\%s%s", GameType == GT_SINGLEPLAYER ? MissionsResourcePath : MapsResourcePath, PathChangeExtension(MissionMap, ".ini"));
    LoadVars(mapIniPath);
    LoadMultiPlayerSettings(mapIniPath);
}

static void LoadMultiPlayerSettings(LPCTSTR fileName)
{
    NetCrates = IniGetBool("MultiPlayer", "Crates", NetCrates, fileName);
    NetWorms = IniGetInt("MultiPlayer", "Worms", NetWorms, fileName);
    NetStartingCredits = IniGetInt("MultiPlayer", "Credits", NetStartingCredits, fileName);
    NetTechLevel = IniGetInt("MultiPlayer", "TechLevel", NetTechLevel, fileName);
    NetUnitCount = IniGetInt("MultiPlayer", "UnitCount", NetUnitCount, fileName);
    StartWithMCV = IniGetBool("MultiPlayer", "StartWithMCV", true, fileName);
    UseDefaultWinLoseEvents = IniGetBool("MultiPlayer", "UseDefaultWinLoseEvents", false, fileName);
    
    int maxIcons = (GameHeight - 212) / SideBarIconHeight;
    int iconCount = IniGetInt("MultiPlayer", "SidebarIconCount", maxIcons, fileName);
    SideBarIconCount = iconCount > maxIcons ? maxIcons : iconCount < 1 ? 1 : iconCount;
}

static void LoadVars(LPCTSTR fileName)
{
    harvestUnloadDelay = IniGetInt("Vars", "harvestUnloadDelay", harvestUnloadDelay, fileName);
    harvestBlobValue = IniGetInt("Vars", "harvestBlobValue", harvestBlobValue, fileName);
    harvestLoadSpiceDelay = IniGetInt("Vars", "harvestLoadSpiceDelay", harvestLoadSpiceDelay, fileName);
    starportUpdateDelay = IniGetInt("Vars", "starportUpdateDelay", starportUpdateDelay, fileName);
    starportStockIncreaseDelay = IniGetInt("Vars", "starportStockIncreaseDelay", starportStockIncreaseDelay, fileName);
    starportStockIncreaseProb = IniGetInt("Vars", "starportStockIncreaseProb", starportStockIncreaseProb, fileName);
    starportCostVariationPercent = IniGetInt("Vars", "starportCostVariationPercent", starportCostVariationPercent, fileName);
    starportFrigateDelay = IniGetInt("Vars", "starportFrigateDelay", starportFrigateDelay, fileName);
    refineryExplosionOffsetX = IniGetInt("Vars", "refineryExplosionOffsetX", refineryExplosionOffsetX, fileName);
    refineryExplosionOffsetY = IniGetInt("Vars", "refineryExplosionOffsetY", refineryExplosionOffsetY, fileName);
    HarvesterDriveDistance = IniGetInt("Vars", "HarvesterDriveDistance", HarvesterDriveDistance, fileName);
    RepairDriveDistance = IniGetInt("Vars", "RepairDriveDistance", RepairDriveDistance, fileName);
    BuildingRepairValue = IniGetInt("Vars", "BuildingRepairValue", BuildingRepairValue, fileName);
    UnitRepairValue = IniGetInt("Vars", "UnitRepairValue", UnitRepairValue, fileName);
    SinglePlayerDelay = IniGetInt("Vars", "SinglePlayerDelay", SinglePlayerDelay, fileName);
    NumberOfFremen = IniGetInt("Vars", "NumberOfFremen", NumberOfFremen, fileName);
    SandWormAppetite = IniGetInt("Vars", "SandWormAppetite", SandWormAppetite, fileName);
    SandWormInitialSleep = IniGetInt("Vars", "SandWormInitialSleep", SandWormInitialSleep, fileName);
    SandWormFedSleep = IniGetInt("Vars", "SandWormFedSleep", SandWormFedSleep, fileName);
    SandWormShotSleep = IniGetInt("Vars", "SandWormShotSleep", SandWormShotSleep, fileName);
    NumberOfCrates = IniGetInt("Vars", "NumberOfCrates", NumberOfCrates, fileName);
    CratesPerPlayer = IniGetBool("Vars", "CratesPerPlayer", CratesPerPlayer, fileName);
    DevastatorExplodeDelay = IniGetInt("Vars", "DevastatorExplodeDelay", DevastatorExplodeDelay, fileName);
    IgnoreDistance = IniGetInt("Vars", "IgnoreDistance", IgnoreDistance, fileName);
    CrateCash = IniGetInt("Vars", "CrateCash", CrateCash, fileName);
    ShowWarnings = IniGetBool("Vars", "ShowWarnings", ShowWarnings, fileName);
    DeathHandAccuracy = IniGetInt("Vars", "DeathHandAccuracy", DeathHandAccuracy, fileName);
    
    InfiniteSpice = IniGetBool("Vars", "InfiniteSpice", fileName == rulesSpawnIni || fileName == rulesIni ? false : InfiniteSpice, fileName);
}
