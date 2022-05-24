///scrPopraw_date(miesiac, rok<zwraca wartosc: rok.miesiac >)
var _obj_id, _miesiac, _rok;

_miesiac=argument0;
_rok=argument1;
debug_miesiac=_miesiac
debug_rok=_rok
//poprawka daty np miesiac=15 -> rok+=1 miesiac=marzec
if _miesiac>11 
{
    _rok+=round((_miesiac + 1) div 12)
    _miesiac=round((_miesiac + 1) mod 12 -1)
}
if _miesiac<0
{
    _rok-=round((12 + _miesiac + 1) div 12)
    _miesiac=round((12 +_miesiac + 1 -0.1) mod 12 -1 )
}
show_debug_message("scrPopraw_date    in:"+string(debug_miesiac)+"/"+string(debug_rok)+" out:"+string(_miesiac)+"/"+string(_rok))
return _rok+_miesiac/100
