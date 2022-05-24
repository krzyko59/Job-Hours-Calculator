///scrCreate_draw_msc( miesiac, rok)
/*
argument0 = miesiac
argument1 = rok
*/
var _data, _rok, _miesiac, _obj_id;
_miesiac=argument0;
_rok=argument1;
debug_miesiac=_miesiac
debug_rok=_rok
_data=scrPopraw_date(_miesiac, _rok)
_rok=_data div 1
_miesiac=(_data mod 1) * 100

_obj_id=instance_create(0,0,objDraw_msc)
_obj_id.rok_teraz=_rok
_obj_id.dzien_teraz=-1
_obj_id.miesiac_teraz=_miesiac
_obj_id.ilosc_dni=scrIlosc_dni(_miesiac, _rok)
return _obj_id;
