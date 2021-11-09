//
//  SpecialUser.swift
//  15-SwiftOOP
//
//  Created by Konpyūtā on 9.11.2021.
//

import Foundation
class SpecialUser :User{
    
    func newFunction(){
        
        print("new function called")
        
    }
    
    override func exampleFuction() {
        super.exampleFuction()
        print("this is special example.")
    }
}
