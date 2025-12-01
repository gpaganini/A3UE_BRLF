class Templates
{
    class Vanilla_Base;

    class BRLF_Reb : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\BRLF);
        flagTexture = QPATHTOFOLDER(Templates\BRLF\flag_brlf.paa);
        side = "Reb";
        name = "BRLF";
        file = "BRLF_Reb";
        description = "Brazilian resistance against opression and dictatorial governments";
    };

    class BRLF_Reb_Adv : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\BRLF);
        flagTexture = QPATHTOFOLDER(Templates\BRLF\flag_brlf.paa);
        side = "Reb";
        name = "BRLF (Advanced)";
        file = "Vanilla_Reb_SDK_new";
        description = "Brazilian resistance against opression and dictatorial governments";
    };
};