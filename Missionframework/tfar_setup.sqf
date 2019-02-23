#include "\task_force_radio\functions\common.sqf";

if ((isServer) or (isDedicated)) then {

    //TFAR ==============================
    /*
    TF_terrain_interception_coefficient = 7;
    publicVariable "TF_terrain_interception_coefficient";

    TF_give_microdagr_to_soldier = false;
    publicVariable "TF_give_microdagr_to_soldier";

    tf_give_personal_radio_to_regular_soldier = false;
    publicVariable "tf_give_personal_radio_to_regular_soldier";

    tf_no_auto_long_range_radio = true;
    publicVariable "tf_no_auto_long_range_radio";

    tf_same_sw_frequencies_for_side = true;
    publicVariable "tf_same_sw_frequencies_for_side";

    tf_same_lr_frequencies_for_side = true;
    publicVariable "tf_same_lr_frequencies_for_side";
    */

    _settingsSwWest = false call TFAR_fnc_generateSwSettings;
    _settingsSwWest set [2, ["30","31","32","33","34","35","36","37"]];
    tf_freq_west = _settingsSwWest;
    publicVariable "tf_freq_west";

    _settingsLRWest = false call TFAR_fnc_generateLRSettings;
    _settingsLRWest set [2, ["40","41","42","43","44","45","46","47"]];
    tf_freq_west_lr = _settingsLRWest;
    publicVariable "tf_freq_west_lr";

    _settingsSwEast = false call TFAR_fnc_generateSwSettings;
    _settingsSwEast set [2, ["411","412","413","414","415","416","417","418"]];
    tf_freq_east = _settingsSwEast;
    publicVariable "tf_freq_east";

    _settingsLREast = false call TFAR_fnc_generateLRSettings;
    _settingsLREast set [2, ["41","42","43","44","45","46","47","48"]];
    tf_freq_east_lr = _settingsLREast;
    publicVariable "tf_freq_east_lr";

/*
    tf_radio_channel_name = "TaskForceRadio";
    publicVariable "tf_radio_channel_name";

    tf_radio_channel_password = "123";
*/
}
