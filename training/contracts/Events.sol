// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/* Eventsler ne icin kullanilir?
Arayüz etkilesimli kontrat olusturdugumuzda kullanilabilir..*/ 

contract Events{
    //Struct
    struct Student{
        string name;
        bool attendance;
        int marks;
    }

    Student public newStudent;
    //Events  (Kullanici bu istenilen bilgileri girdiginde kontrat cagirilacak)
    event studentRegistered(string name, bool attendance, int marks);

    function registerStudent(string memory _name, bool _attendance, int _marks) public{
        newStudent.name=_name;
        newStudent.attendance=_attendance;
        newStudent.marks=_marks;
        emit studentRegistered(_name, _attendance, _marks);
    }
/* Deploy ettikten sonra logs kismindan eventin kayit ettiklerini bulabiliriz.*/
}