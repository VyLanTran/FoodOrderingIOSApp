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
    @State var showSheet: Bool = false
    
    func countItems() -> Int {
        var numberOfItems = 0
        let restaurantName = restaurant.name
        
        if cartManager.order.keys.contains(restaurantName) {
            for dish in cartManager.order[restaurantName]!.keys {
                numberOfItems += cartManager.order[restaurantName]![dish]!
            }
        }

        return numberOfItems
    }
    
    func computeSubtotal()  -> Double {
        var subtotal = 0.0
        let restaurantName = restaurant.name
        
        if cartManager.order.keys.contains(restaurantName) {
            for dish in cartManager.order[restaurantName]!.keys {
                subtotal += dish.price * Double(cartManager.order[restaurantName]![dish]!)
            }
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
                .clipShape(Circle())
                .padding(.leading)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(restaurant.name)
                        .font(.system(size: 18))
                        .bold()
                    
                    let numberOfItems = countItems()
                    let subtotal = computeSubtotal()
                    
                    HStack {
                        if (numberOfItems == 1) {
                            Text("1 item")
                                .font(.system(size: 14))
                        }
                        else {
                            Text("\(numberOfItems)"  + " items")
                                .font(.system(size: 14))
                        }
                        
                        Text("•")
                        
                        Text("$\(subtotal, specifier: "%.2f")")
                            .font(.system(size: 14))
                    }
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .bold()
                    .padding(.trailing)
            }
            .frame(height: 100)
        }
        .onTapGesture {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            OrderDetails(restaurant: restaurant, dishes: cartManager.order[restaurant.name]!)
                .presentationDetents([.fraction(0.75)])
        }
    }
}

struct RestaurantInCart_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantInCart(restaurant: Restaurant.all[3])
    }
}
