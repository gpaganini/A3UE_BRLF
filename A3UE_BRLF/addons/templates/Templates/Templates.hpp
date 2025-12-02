class Templates
{
    class Vanilla_Base;

    class BRLF_Reb : Vanilla_Base
    {
        requiredAddons[] = {"CUP_Creatures_People_Civil_Russia", "CUP_BaseConfigs", "CUP_AirVehicles_Core", "BRAF_Air"};
        basepath = QPATHTOFOLDER(Templates\BRLF);
        flagTexture = QPATHTOFOLDER(Templates\BRLF\flag_brlf.paa);
        side = "Reb";
        name = "BRLF";
        file = "BRLF_Reb";
        description = "";
    };

    class Syndikat_New : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Vanilla);
        flagTexture = QPATHTOFOLDER(Templates\Vanilla\flag_aaf_torn_co.paa);
        side = "Reb";
        name = "Syndikat New";
        file = "Vanilla_Reb_SDK";
        description = "";
    };
};