//
//  AppetizerModel.swift
//  Appetizer
//
//  Created by vibhu mishra on 02/07/24.
//

import Foundation

struct AppetizerModel:Decodable,Identifiable{
    let id: Int
    let imageURL : String
    let carbs: Int
    let description: String
    let calories: Int
    let protein: Int
    let price: Double
    let name: String
}

struct AppetizerResponse: Decodable{
    let request : [AppetizerModel]
}

struct MockData {
    static let sampleAppetizer = AppetizerModel(
        id: 001,
        imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
        carbs: 99,
        description: "This is Description for my appetizer. it is yummy",
        calories: 87,
        protein: 100,
        price: 9.99,
        name: "Test Appetizer"
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let sampleAppetizerone = AppetizerModel(
        id: 001,
        imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
        carbs: 99,
        description: "This is Description for my appetizer. it is yummy",
        calories: 87,
        protein: 100,
        price: 9.99,
        name: "Test Appetizer one"
    )
    static let sampleAppetizertwo = AppetizerModel(
        id: 002,
        imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
        carbs: 99,
        description: "This is Description for my appetizer. it is yummy",
        calories: 87,
        protein: 100,
        price: 9.99,
        name: "Test Appetizer two"
    )
    static let sampleAppetizerthree = AppetizerModel(
        id: 003,
        imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
        carbs: 99,
        description: "This is Description for my appetizer. it is yummy",
        calories: 87,
        protein: 100,
        price: 9.99,
        name: "Test Appetizer"
    )
    static let orderItem = [sampleAppetizerone, sampleAppetizertwo, sampleAppetizerthree]
}
