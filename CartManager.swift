//
//  CartManager.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/23/22.
//

import Foundation

class CartManager: ObservableObject {
    
    @Published private(set) var order = [String : [Dish : Int]]()
    @Published private(set) var numberOfItems: Int = 0
    @Published private(set) var total: Double = 0
    
    
    func addToCart(dish: Dish) {
        if order.keys.contains(dish.restaurant) {
            if (order[dish.restaurant]!.keys.contains(dish)) {
                order[dish.restaurant]?[dish]? += 1
            }
            else {
                order[dish.restaurant]?[dish] = 1
            }
        }
        else {
            order[dish.restaurant] = [dish : 1]
        }

        numberOfItems += 1
        total += dish.price
    }

    
//    func removeFromCart(dish: Dish) {
//        dishes = dishes.filter { $0.id != dish.id }
//        total -= dish.price
//    }
}



