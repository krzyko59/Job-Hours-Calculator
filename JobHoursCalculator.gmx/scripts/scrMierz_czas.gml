///scrMierz_czas(czas wejscia, czas wyjscia)
///Odmierzanie czasu pomiedzy <argument0>, a <argument1>
var _in, _out;
_in = argument0
_out = argument1
if _out<_in//po polnocy
    return 24- _in+ _out;
else
    return _out-_in;
