//
//  CartManager.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/23/22.
//

import Foundation

class CartManager: ObservableObject {

    // order is a dictionary of the form [restaurantName : [Dish : numberOfItems]]
    @Published public var order = [String : [Dish : Int]]()

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
    }
    
    func getNumberOfItems() -> Int {
        var count = 0
        for dishes in Array(order.values) {
            for quantity in Array(dishes.values) {
                count += quantity
            }
        }
        return count
    }
}



