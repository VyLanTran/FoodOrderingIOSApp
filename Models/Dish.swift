//
//  DishData.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/20/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case appetizer = "Appetizer"
    case soupAndSide = "SoupAndSide"
    case main = "Main"
    case drink = "Drink"
    case dessert = "Dessert"
}

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Double
    let description: String
    let restaurant: String
    let category: Category.RawValue
    let isPopular: Bool
    
//    let isNew: Bool
//    let extra: String
    
    init(name: String, image: String, price: Double, description: String = "", restaurant: String, category: Category.RawValue, isPopular: Bool = false) {
        self.name = name
        self.image = image
        self.price = price
        self.description = description
        self.restaurant = restaurant
        self.category = category
        self.isPopular = isPopular
    }
}

extension Dish {
    static let all: [Dish] = [
        Dish(
            name: "White Wine and Roasted-Garlic Mussels",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0001127M_5A4252D9CF97737FE053046613AC9B28.jpg?t=2019-09-05T15:31:01",
            price: 20.00,
            description: "The best of the ocean — and the kitchen — fits in one little bowl. As rich and delicious as lobster bisque soup can be, it’s a lobster bisque recipe that beats all",
            restaurant: "Red Lobster",
            category: "Appetizer"
        ),
        Dish(
            name: "Lobster Bisque",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0001017M_A45BCFBE56A8C3C7E053046613AC5940.jpg?t=2020-04-30T15:50:51",
            price: 20,
            description: "",
            restaurant: "Red Lobster",
            category: "SoupAndSide",
            isPopular: true
        ),
        Dish(
            name: "New England Clam Chowder",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0001002M_88C889E454C80E10E053046613AC6A61.jpg?t=2020-04-14T19:23:42",
            price: 20,
            description: "",
            restaurant: "Red Lobster",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Caesar Salad",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0006084M_5A920E1DC3F6D892E053046613AC34AA.jpg?t=2019-09-05T15:23:05",
            price: 20,
            description: "",
            restaurant: "Red Lobster",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Rock Lobster and Shrimp",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0030028M_E0DD5AA517B581ABE053077A13AC28EA.jpg?t=2022-06-09T13:44:34",
            price: 20,
            description: "",
            restaurant: "Red Lobster",
            category: "Main",
            isPopular: true
        ),
        Dish(
            name: "Seaside Shrimp Trio",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0002486M_5A4252D9CFEC737FE053046613AC9B28.jpg?t=2022-06-30T19:42:53",
            price: 20,
            description: "",
            restaurant: "Red Lobster",
            category: "Main"
        ),
        Dish(
            name: "Chocolate Wave Cake",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0005121M_5A4252D9D0E6737FE053046613AC9B28.jpg?t=2020-05-31T13:51:19",
            price: 20,
            description: "",
            restaurant: "Red Lobster",
            category: "Dessert"
        )
    ]
}
