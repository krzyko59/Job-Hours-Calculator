///scrWyswietl_sume(czas)
var _czas, _minuta;
_czas=argument0
_minuta=_czas mod 1 *60
if _minuta<10
_minuta="0"+string(_minuta)
_minuta=string_copy(_minuta, 1, 2 );
return (string(_czas div 1)+"h"+string(_minuta)+"min");
