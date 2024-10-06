#include "..\..\script_component.hpp"

#define SETTING_HEADER_UI JOINQUOTE(SETTING_HEADER, UI)

[
    "hatg_setting_ui",
    "CHECKBOX",
    ["$STR_HATG_UI_Enable", "$STR_HATG_UI_Enable_info"],
    SETTING_HEADER_UI, 
    false,
    0,
    {
        params ["_value"];

        // uiNamespace setVariable ["hatg_setting_ui", _value];
    }
] call CBA_fnc_addSetting;

[
    "hatg_setting_ui_fade",
    "SLIDER",
    ["$STR_HATG_UI_Enable_Fading", "$STR_HATG_UI_Enable_Fading_info"],
    SETTING_HEADER_UI, 
    [0, 15, 0, 2],
    2,
    {
        params ["_value"];

        // uiNamespace setVariable ["hatg_setting_ui_fade", round (_value)];
    }
] call CBA_fnc_addSetting;

private _fontNames = ["PuristaBold", "PuristaLight", "PuristaMedium", "PuristaSemibold", "Caveat", "EtelkaMonospacePro", "EtelkaMonospaceProBold", "EtelkaNarrowMediumPro", "LCD14", "LucidaConsoleB", "RobotoCondensed", "RobotoCondensedBold", "RobotoCondensedLight", "TahomaB"];
[
    "hatg_setting_ui_font",
    "LIST",
    ["$STR_HATG_UI_Font", "$STR_HATG_UI_Font_info"],
    SETTING_HEADER_UI,
    [_fontNames, _fontNames, 0],
    2,
    {
        params ["_value"];


        // uiNamespace setVariable ["hatg_setting_ui_font", _value, true];
    }
] call CBA_fnc_addSetting;

[
    "hatg_setting_ui_x",
    "SLIDER",
    ["$STR_HATG_UI_Position_X", "$STR_HATG_UI_Position_X_info"],
    SETTING_HEADER_UI, 
    [-2, 2, 0, 2],
    2,
    {
        params ["_value"];

        uiNamespace setVariable ["hatg_setting_ui_x", _value];
        [_value, (uiNamespace getVariable ["hatg_setting_ui_y", 1.7])] call HATG_fnc_handleDisplayPosition;
    }
] call CBA_fnc_addSetting;

[
    "hatg_setting_ui_y",
    "SLIDER",
    ["$STR_HATG_UI_Position_Y", "$STR_HATG_UI_Position_Y_info"],
    SETTING_HEADER_UI, 
    [-2, 2, 0, 2],
    2,
    {
        params ["_value"];

        uiNamespace setVariable ["hatg_setting_ui_y", _value];
        [(uiNamespace getVariable ["hatg_setting_ui_x", 0.45]), _value] call HATG_fnc_handleDisplayPosition;
    }
] call CBA_fnc_addSetting;

[
    "hatg_setting_ui_textsize",
    "SLIDER",
    ["$STR_HATG_UI_Text_Size", "$STR_HATG_UI_Text_Size_info"],
    SETTING_HEADER_UI,
    [0, 6.5, 2, 1],
    2,
    {
        params["_value"];

        // uiNamespace setVariable ["hatg_setting_ui_textsize", _value];
    }
] call CBA_fnc_addSetting;

[
    "hatg_setting_ui_colour_hidden",
    "COLOR",
    ["$STR_HATG_UI_Colour_Hidden", "$STR_HATG_UI_Colour_Hidden_info"],
    SETTING_HEADER_UI,
    [0, 1, 0, 1],
    2,
    {
        params ["_value"];

        // uiNamespace setVariable ["hatg_setting_ui_colour_hidden", _value];
    }
] call CBA_fnc_addSetting;

[
    "hatg_setting_ui_colour_revealed",
    "COLOR",
    ["$STR_HATG_UI_Colour_Revealed", "$STR_HATG_UI_Colour_Revealed_info"],
    SETTING_HEADER_UI, 
    [1, 0, 0, 1],
    2,
    {
        params ["_value"];

        // uiNamespace setVariable ["hatg_setting_ui_colour_revealed", _value];
    }
] call CBA_fnc_addSetting;