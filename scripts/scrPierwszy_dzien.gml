///scrPierwszy_dzien( miesiąc, rok)
/*
argument0=miesiac
argument1=rok
*/
var _i_rok, _i_miesiac, _liczba, _miesiac, _rok, _data;
_miesiac=argument0;
_rok=argument1;
debug_miesiac=_miesiac
debug_rok=_rok
_data=scrPopraw_date(_miesiac, _rok)
_rok=_data div 1
_miesiac=_data mod 1 * 100

_liczba=2//1 stycznia 2020 to sroda

for(_i_rok=0;_i_rok<=_rok;_i_rok++)//lata
{
    for(_i_miesiac=0;_i_miesiac<12;_i_miesiac++)//miesiace
    {
        if _i_miesiac==_miesiac and _i_rok=_rok 
            break;
        if _i_miesiac=1/* luty */ and (_i_rok mod 4) != 0 /* rok przestepny */
            _liczba-=1
        _liczba+=objSystem.ilosc_dni[_i_miesiac]
    }
}
_liczba= _liczba mod 7
return _liczba
