//
//  RestaurantInCart.swift
//  FoodOrdering
//
//  Created by Vy Tran on 12/24/22.
//

import SwiftUI

struct RestaurantInCart: View {
    
    @EnvironmentObject var cartManager: CartManager
    var restaurant: Restaurant
    
    func countItems() -> Int {
        var numberOfItems = 0
        let restaurantName = restaurant.name
        
        for dish in cartManager.order[restaurantName]!.keys {
            numberOfItems += cartManager.order[restaurantName]![dish]!
        }

        return numberOfItems
    }
    
    func computeSubtotal()  -> Double {
        var subtotal = 0.0
        let restaurantName = restaurant.name
        
        for dish in cartManager.order[restaurantName]!.keys {
            subtotal += dish.price * Double(cartManager.order[restaurantName]![dish]!)
        }
        
        return subtotal
    }
    
    var body: some View {
        VStack {
            Divider()
            
            HStack(spacing: 20) {
                AsyncImage(
                    url: URL(string: restaurant.image),
                    content: { image in
                        image.resizable()
                    },
                    placeholder: {
                        Image(systemName: "photo")
                    }
                )
                .frame(width: 80, height: 80)
                .padding(.leading)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(restaurant.name)
                        .font(.system(size: 16))
                        .bold()
                    
                    let numberOfItems = countItems()
                    let subtotal = computeSubtotal()
                    
                    HStack {
                        if (numberOfItems == 1) {
                            Text("1 item")
                                .font(.system(size: 12))
                        }
                        else {
                            Text("\(numberOfItems)"  + " items")
                                .font(.system(size: 12))
                        }
                        
                        Text("•")
                        
                        Text("$\(subtotal, specifier: "%.2f")")
                            .font(.system(size: 12))
                    }
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .bold()
                    .padding(.trailing)
            }
            .frame(height: 100)
        }
        
        
    }
}

struct RestaurantInCart_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantInCart(restaurant: Restaurant.all[3])
    }
}
