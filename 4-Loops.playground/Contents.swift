import UIKit

var greeting = "Hello, playground"

// Loops (Döngüler)

// while Loop

5 == 5
5 != 4
5 >= 5
5 >= 7
var x = 2

while x<10 {
    print(x)
    x += 1
}
    
// For Loop
// Genelde dizilerle kullanılır.

var myArray = ["Atıl","Mahmut","Mehmet","Zeynep"]

print(myArray[2])

for isim in myArray {
    
    print(isim)
}

// buradaki isimler bitene kadar tek tek isimleri alıyor

var numaraDizisi = [10,20,30,40,50,60,70,80,90]

numaraDizisi[0] / 5 * 3

for num in numaraDizisi {
    
    print(num / 5 * 3)
}

for yeniNumara in 1 ... 10 {
    
    print(yeniNumara)
}
// If kontrolleri / If statements // Eğer kontrolleri

3 == 3

// AND &&
// OR  ||

3 == 3 && 4 == 4
3 != 3 && 4 == 4

3 != 3 || 4 == 4

// ÖRNEK

var myAge = 100
if myAge < 20 {
    
    print("çok gençsin")
} else if myAge > 20 && myAge < 30 {
    print("yirmili yaşlarındasın")
}
else if myAge > 30 && myAge < 40 {
    
    print("otuzlu yaşlarındaysan")
}
else {
    print("kırk yaşından büyüksün")
}

