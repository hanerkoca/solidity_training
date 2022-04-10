pragma solidity >=0.7.0 <0.9.0;

contract Variable{
    //arrays
    string[] public names=["miuul", "vahit", "enes"];

    // [] icine sayi girersek ne kadar sayida deger oldugunu belirtmis oluruz.
    string[4] public names2=["miuul", "vahit", "enes"];

    //mapping ->dictionary   key -->values
    //asagidaki örnekte uint8 degerleri bool degerlerine atanmistir.  
    mapping(uint8=>bool) public ogrenciler;

    //enums: Sözlük yapisina benzer. Tasarruflu kullanimdir!
    // asagidaki örnekte, cities degiskenini public ettigimizde ve c1 degerine Ankara ilini atadigimizda
    // c1 in sorgusu bize 0 olarak döner. 0. deger oldugunu belirtir.
    enum cities {Ankara, Istanbul, Bursa}
    cities public c1=cities.Ankara;

    //struct
    // bilgileri public etmeden önce struct ile kayda alabiliriz.
    struct Ogrenci{
        string name;
        string surname;
        uint8 no;
    }
    Ogrenci public ogr1;



}