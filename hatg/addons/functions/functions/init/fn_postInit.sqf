if !(hasInterface) exitWith {false}; // Do not run postInit on dedicated servers or headless clients

private _serverActivated = ["hatg_serverActivated", false] call HATG_fnc_getVariable;
if !(_serverActivated) exitWith {titleText ["HATG is not a client mod and needs to be ran on the server too. HATG features will not work until the server loads the mod.", "PLAIN"]};
if (isClass (configFile >> "CfgPatches" >> "HIG_wall")) exitWith {titleText ["HATG should not be running alongside ACSTG, please disable it. HATG will now be disabled to prevent conflicts.", "PLAIN"]};

// Should probably localize the above error messages

call HATG_fnc_keybinds;

[player] call HATG_fnc_addHandlers;

call HATG_fnc_createDisplay;
[player] call HATG_fnc_handleDisplayText;

if (hatg_setting_mp_ai || {!isMultiplayer}) then {
    if ((count allPlayers) > 1) exitWith {};
    call HATG_fnc_handleGroupCreated;
};