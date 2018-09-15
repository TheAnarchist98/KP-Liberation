#include "..\ui\defines.hpp"
/*
    KPLIB_fnc_respawn_displaySpawnSelChanged

    File: fn_respawn_displaySpawnSelChanged.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2018-09-12
    Last Update: 2018-09-15
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Handle respawn list selection change

    Parameter(s):
        0: CONTROL - Spawn list control
        1: NUMBER - Selected index

    Returns:
    NOTHING
*/
params [
    ["_spawnListCtrl", nil, [controlNull]],
    ["_selectedIndex", 0, [0]]
];


private _display = ctrlParent _spawnListCtrl;
// Get currently selected item
private _currentItem =  (_display getVariable "KPLIB_respawns") select _selectedIndex;

// Set currently selected item
_display setVariable ["KPLIB_selRespawn", _currentItem];

[_display] call KPLIB_fnc_respawn_displayFocusMap;
