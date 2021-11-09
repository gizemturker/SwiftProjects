import UIKit

func ornekFonksiyon () {
    print("ornek")
}
// bunun içine yazdığımız kodlar ne zaman çalışıyorsa o zaman gelir

ornekFonksiyon()

// Parametre & input
func myFunction(a: String){
    print(a)
}

myFunction(a: "gizem")

// Output , return

func toplama (x: Int, y: Int ){
    print(x+y)
}
toplama(x: 10, y: 20)

//var numara = toplama(x: 20, y: 30)
/* print(numara)

func carpma (a:Int, b:Int) -> Int {
    
    return a * b
}

var carpmaSonucu = carpma (a:5, b:8)

print(carpmaSonucu)

func logicFunction (x: Int, y:Int ) -> Bool {
    
    if x > y {
        return true
    } else {
        return false
    }
}

logicFunction(x: 5, y: 3)
// func giriş çıkış işlemleri için log in log out kullanılabilir. en küçük parçadır.

// bir sayfada birden fazla iş varsa bunlar küçük func olur.

// örnek butona tıklandığında buton onclick function u

// Opsiyoneller (Optionals)
*/
var benimIsmim : String?

benimIsmim?.uppercased()

benimIsmim = "Gizem"

var kullaniciNumarasi = "20"

var Sonuc = Int(kullaniciNumarasi)! * 5

// Burada kullanılan ünlem işareti eminim integerdır.

var sonuc = (Int(kullaniciNumarasi) ?? 1) * 5


// if let = eğer yapabilirsen

if let yeniSonuc = Int(kullaniciNumarasi) {
    yeniSonuc * 5
}
else {
    print("yanlış giriyorsun rakam ver lütfen")
}
