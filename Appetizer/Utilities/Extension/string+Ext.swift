//
//  string+Ext.swift
//  Appetizer
//
//  Created by vibhu mishra on 28/07/24.
//

import Foundation

extension String{
    var isValidEmail: Bool{
        let emailFormat = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
