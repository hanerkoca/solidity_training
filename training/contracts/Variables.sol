pragma solidity >=0.7.0 <0.9.0;

contract Variable{
    int8 public deger=-100;    // int8 (2^8  -128 ile 127 arasinda)
    uint8 public deger2=255;  // uint sadece pozitif degerler icin kullanilir, yani 0 ile 255 arasinda
    /* deger=2
    deger=3*/                 // "/*...*/" bu ifade ile de coklu aciklama yapabiliriz.

    //bool                      varsayilani false!
    bool public tf=true;

    //string                    stringin kullanimi blockchainde yüksek gas feeleri gerektirir!
    string public isim="miuul";
    
    bytes public bytedeger="abc";   //ASCII tablosuna göre dönüsüm yapar.


}