//
//  User.swift
//  15-SwiftOOP
//
//  Created by Konpyūtā on 9.11.2021.
//

import Foundation

class User {
    
    var name : String = ""
    var age : Int = 0
    var job : String = ""
    
    // initilazier
    init(name: String, age: Int, job: String) {
        print("init called.")
        self.name = name
        self.age = age
        self.job = job
    }
}
