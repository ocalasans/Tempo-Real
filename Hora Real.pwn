/*
        Filterscript criado por Walkerxinho7.

        Discord: walkerxinho7 ou Walkerxinho7#9124
        Youtube: Walkerxinho
        Instagram: ocalasans
*/

#include <a_samp>

#if defined FILTERSCRIPT

#else

main(){}

#define Funcao_FS::%0(%1) 		forward %0(%1);\
                                public %0(%1)
public OnFilterScriptInit()
{
    print("Filterscript Hora real > Walkerxinho7 loaded.");
    //
    SetTimer("UpdateWorldTime", 1000, true);
	return 1;
}
Funcao_FS::UpdateWorldTime()
{
    new hour, minute, second;
	gettime(hour, minute, second);
	switch(hour)
   	{
  		case 0..4: SetWorldTime(3);
		case 5..10: SetWorldTime(7);
		case 11..15: SetWorldTime(12);
		case 16..17: SetWorldTime(20);
		case 18..23: SetWorldTime(0);
	}
	return 1;
}

#endif

