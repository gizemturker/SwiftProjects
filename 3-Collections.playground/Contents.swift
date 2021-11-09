import UIKit
// koleksiyonlar // collections

// Dizilerle başlayalım!

var firstArray = ["Gizem", "Fatos", "Ali", "Ayşe"]

// mesela biz bunu internetten çektik. 5000 tane veri var.

// Index mantığı ile çalışıyor. Dizi buradaki verileri birer index numarası ile saklıyor.
firstArray[0]

firstArray[3]

firstArray[3].uppercased()

firstArray[2] = "Osman"

var secondArray = [10,20,30,40]

secondArray[2] * 5 / 10

var karisikArray = [100,200,"Gizem","true","false"] as [Any]

// as>> casting, any >> any object heterojenden as Any ile kurtulduk

karisikArray[2]

var yeniDegisken = karisikArray[2] as! String
// as! işareti sen bu işlemi yap bu string ben eminim demek

karisikArray.append("Zeynep")

// sona any bir element eklemek

karisikArray[karisikArray.count-1]
// son elemanı almış oluyoruz.

// ikinci bir son elemanı alma yöntemi

karisikArray.last

var numbers = [5,6,2,9,10,4]

numbers.sort()

// harf sıralama için de aynısı yapılabilir

var Harfler = ["h","j","a"]

Harfler.sort()


// Array, Liste, Dizi

// Yeni Konu Set

// not: içerisinde bir eleman sadece 1 defa yer alabiliyor.

var numbers1 = [1,1,1,4,4,2,2,6]

var numaraSeti : Set = [1,1,1,1,2,3,4,5,6]

numaraSeti.remove(3)


// sonuçta 1 ler tek verilmiş fakat sıra yok

var siparislerDizisi = ["Istanbul","Istanbul","Istanbul","Ankara","Adana"]

siparislerDizisi.count

let birinciSet : Set = [40,50,60]

let ikinciSet : Set = [50,60,70]

let birlesimSeti = birinciSet.union(ikinciSet)

// bir elemanın birden fazla olmasını istemiyorsanız let i kullanabiliriz.

// Dictionary
// key-value-pairing -anahtar kelime-değer eşleşmesi

// anahtar kelime seçiyoruz değer veriyor

let meyveDizisi = ["Armut","Muz","Elma","Karpuz"]
let kaloriDizisi = [100,150,120,300]

meyveDizisi[2]
kaloriDizisi[3]

// 5000 besinin kalori değeri yamak istenirse tek tek yazmaya kalksak index hatası olabilir.

var meyveKaloriDictionary = ["Armut" : 100, "Muz" : 150, "Elma" : 120]

meyveKaloriDictionary["Armut"]

meyveKaloriDictionary.keys
meyveKaloriDictionary.values

meyveKaloriDictionary["Muz"] = 200

var yeniSozluk = []
