//
//  main.swift
//  15-SwiftOOP
//
//  Created by Konpyūtā on 9.11.2021.
//

import Foundation

let gizem = User(name: "Gizem", age: 30, job: "Software", type: UserType.AdminUser)

print(gizem.job)

gizem.job = "Mechanical"

print(gizem.job)

gizem.exampleFuction()


print(gizem.type)

print(gizem.getHairColor())



let zeynep = SpecialUser(name: "Zeynep", age: 70, job: "Teacher", type: UserType.NormalUser)

print(zeynep.name)


zeynep.newFunction()

zeynep.exampleFuction()



