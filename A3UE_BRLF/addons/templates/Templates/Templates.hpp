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

    class BRLF_Reb_PMC : Vanilla_Base
    {
        requiredAddons[] = {"CUP_Creatures_People_Civil_Russia", "CUP_BaseConfigs", "CUP_AirVehicles_Core", "BRAF_Air"};
        basepath = QPATHTOFOLDER(Templates\BRLF);
        flagTexture = QPATHTOFOLDER(Templates\BRLF\flag_brazil.paa);
        side = "Reb";
        name = "BR PMC";
        file = "BRLF_Reb_PMC";
        description = "";
    };
};