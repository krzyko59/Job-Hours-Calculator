///scrINI_load_data(miesiac, rok)
var _rok, _miesiac, _i_dzien;
_miesiac=argument0
_rok=argument1

ini_open(string(_rok)+"_"+string(_miesiac)+".ini")

for(_i_dzien=0;_i_dzien<=ilosc_dni;_i_dzien++)//dni
    {
        dane[_i_dzien,KOLOR]=ini_read_real(_i_dzien,KOLOR,C_NOONE)
        notatka[_i_dzien]=ini_read_string(_i_dzien,"notatka","")
        for(_i_zmiana=0;_i_zmiana<=7;_i_zmiana++)
        {
            dane[_i_dzien,WEJSCIE+3*_i_zmiana]=ini_read_real(_i_dzien, WEJSCIE+3*_i_zmiana,0)
            dane[_i_dzien,WYJSCIE+3*_i_zmiana]=ini_read_real(_i_dzien, WYJSCIE+3*_i_zmiana,0)
            dane[_i_dzien,RODZAJ_ZMIANY+3*_i_zmiana]=ini_read_real(_i_dzien, RODZAJ_ZMIANY+3*_i_zmiana,-1)       
        }
//        if !ini_key_exists(_i_dzien,RODZAJ_ZMIANY+3*_i_zmiana)
//            scrDane(_i_dzien,RODZAJ_ZMIANY+3*_i_zmiana,-1)
    }
ini_close()
