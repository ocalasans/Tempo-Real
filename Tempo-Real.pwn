/*
    * Filterscript Tempo Real

    © [2024] [Calasans]. Todos os direitos reservados.

    Discord: ocalasans
    Youtube: Calasans
    Instagram: ocalasans

    SA:MP Programming Comunnity©: https://abre.ai/samp-spc
*/

#include <a_samp>
//
public OnFilterScriptInit()
{
    print(" ");
    print("__________________________________________________________________");
    print("||==============================================================||");
    print("||                                                              ||");
    print("||                   Filterscript Tempo Real                    ||");
    print("||                                                              ||");
    print("||                        By: Calasans                          ||");
    print("||                  Discord: abre.ai/samp-spc                   ||");
    print("||                                                              ||");
    print("||==============================================================||");
    print("__________________________________________________________________");
    print(" ");
    //
    SetTimer("HRF_updateworldtime", 1000, true);
    //
    return true;
}

stock HRF_updateworldtime()
{
    new HRF_hour, HRF_minute, HRF_second;
    gettime(HRF_hour, HRF_minute, HRF_second);
    //
    switch(HRF_hour)
    {
        case 0..5:
            SetWorldTime(5);
        //
        case 6..10:
            SetWorldTime(7);
        //
        case 11..15:
            SetWorldTime(12);
        //
        case 16..17:
            SetWorldTime(20);
        //
        case 18..23:
            SetWorldTime(0);
    }
    //
    return true;
}
