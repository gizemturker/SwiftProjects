//
//  User.swift
//  15-SwiftOOP
//
//  Created by Konpyūtā on 9.11.2021.
//

import Foundation

enum UserType {
    case AdminUser
    case NormalUser
    case UnauthorizedUser
}

class User {
    
    var name :String
    var age :Int
    var job :String
    var type : UserType
    
    
    
    // initilazier
    init(name: String, age: Int, job: String, type: UserType) {
        print("init called.")
        self.name = name
        self.age = age
        self.job = job
        self.type = type
    }
    func exampleFuction(){
        print("function example called")
    }
}
