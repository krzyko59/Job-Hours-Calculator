///scrSuma_godzin(rodzaj zmiany <-1=wszystkie> )

//reset zliczania wszystkich rodzajow zmian
var _zmiana, _suma, _i_dzien, _i_zmiana;
_zmiana=argument0
_suma=0

    //zliczanie godzin w calym miesiacu
for(_i_dzien=0;_i_dzien<=ilosc_dni;_i_dzien++)
{   
    for(_i_zmiana=0;_i_zmiana<7;_i_zmiana++)//rodzaje zmian 0-9
    {
        if scrDane(_i_dzien, RODZAJ_ZMIANY+3*_i_zmiana,-2)>=0// -1 = koniec rodzajow zmian
        {
            if _zmiana=-1/*sume wszystkich rodzajow zmian*/ or _zmiana=scrDane(_i_dzien, RODZAJ_ZMIANY+3*_i_zmiana,-2)/*konkretny rodzaj zmiany*/
                _suma+=scrMierz_czas(scrDane(_i_dzien,WEJSCIE+3*_i_zmiana,-2),scrDane(_i_dzien,WYJSCIE+3*_i_zmiana,-2))
        }else 
            _i_zmiana=7 // koniec pentli
   }
}
return _suma;
