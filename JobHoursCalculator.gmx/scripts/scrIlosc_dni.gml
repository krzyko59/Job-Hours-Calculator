///scrIlosc_dni(miesiac, rok)
var _miesiac, _rok, _data;
{
_miesiac=argument0
_rok=argument1
debug_miesiac=_miesiac
debug_rok=_rok
_data=scrPopraw_date(round(_miesiac), round(_rok))
_rok=round(_data div 1)
_miesiac=round((_data  mod 1) *100)
//zwracanie ilosci dni w miesiacu
if _miesiac=1//luty
    return objSystem.ilosc_dni[_miesiac]-( min(_rok mod 4,1));
else
    return objSystem.ilosc_dni[_miesiac]
}
