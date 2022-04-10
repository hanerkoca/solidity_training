pragma solidity >=0.7.0 <0.9.0;

contract Functions{
    uint public a=10;
    uint public b=3;
    uint public sum;
    string public name="miuul";

    // view ile göstermek istedigimiz degerleri gösterebiliriz.
    function getsum() public view returns(uint, uint){
        return (a,b);
    }

    // a ya atanan deger 10. Bu kontratta getDatayi her kullandigimizda a nin degerini 1 arttiririz.
    // getdata fonksiyonun kullanmasi icin her defasinda islem ücreti ödemek gerekli!
    function getData() public returns(uint){
        a++;
        return a;
    }

    // atama yapmak istersek bu sekilde de bir foksiyon yazabiliriz.
    // pure kullanimi ile daha az fee ödenir
    function dataRead() public pure returns(int16 balance, bool live){
        return(22, true);
    }

    // string ifadesini degistirmek icin olusturulan örnek bir fonksiyon.
    // en yukarda name degiskenine bir deger atadik, daha sonra kullanici girisli setstring fonksiyonunu
    // olusturduk ve name degiskenini buna atadik. (deploydan sonra name e bak setstringe bir deger gir
    // name degiskenini tekrar kontrol et)
    function setString(string memory _name) public{
        name=_name;
    }


}