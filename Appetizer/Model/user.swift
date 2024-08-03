//
//  user.swift
//  Appetizer
//
//  Created by vibhu mishra on 29/07/24.
//

import Foundation

struct User :Codable{
     var firstname = ""
     var lastname = ""
     var email = ""
     var date = Date()
     var extraNapkin = false
     var frequentRefill = false
}
