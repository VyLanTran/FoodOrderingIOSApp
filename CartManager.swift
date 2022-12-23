//
//  CartManager.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/23/22.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var dishes: [Dish] = []
    @Published private(set) var total: Double = 0
    
    func addToCart(dish: Dish) {
        dishes.append(dish)
        total += dish.price
    }
    
    func removeFromCart(dish: Dish) {
        dishes = dishes.filter { $0.id != dish.id }
        total -= dish.price
    }
}



