//
//  CartManager.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/23/22.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var dishes = [String : [Dish]]()
    @Published private(set) var numberOfItems: Int = 0
    @Published private(set) var total: Double = 0
    
    
    func addToCart(dish: Dish) {
        if dishes.keys.contains(dish.restaurant) {
            dishes[dish.restaurant]?.append(dish)
        }
        else {
            dishes[dish.restaurant] = [dish]
        }

        numberOfItems += 1
        total += dish.price
    }

    
//    func removeFromCart(dish: Dish) {
//        dishes = dishes.filter { $0.id != dish.id }
//        total -= dish.price
//    }
}



