///scrDane(dzien, KOLOR/WEJSCIE/WYJSCIE/RODZAJ_ZMIANY, wartosc do zapisu <-2=tylko odczyt> )
var _dzien, _rodzaj_danej, _wartosc;

_dzien= argument0
_rodzaj_danej= argument1
_wartosc= argument2

if _wartosc<-1//tylko odczyt
    return dane[_dzien,_rodzaj_danej];
else //zapis
{
    dane[_dzien,_rodzaj_danej]=_wartosc
    ini_open(string(rok_teraz)+"_"+string(miesiac_teraz)+".ini")
    ini_write_real(_dzien,_rodzaj_danej,_wartosc)
    ini_close()
}

