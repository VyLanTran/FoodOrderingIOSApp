//
//  OrderDetails.swift
//  FoodOrdering
//
//  Created by Vy Tran on 12/25/22.
//

import SwiftUI

struct OrderDetails: View {
    
    @EnvironmentObject var cartManager: CartManager
    var restaurant: Restaurant
    var dishes: [Dish: Int]
    
//    func computeSubtotal()  -> Double {
//        var subtotal = 0.0
//
//        for dish in dishes.keys {
//            subtotal += dish.price * Double(dishes[dish]!)
//        }
//
//        return subtotal
//    }
    
    var body: some View {
        VStack {
            // Restaurant's name
            Text(restaurant.name)
                .font(.system(size: 20))
                .bold()
            
            Divider()
                .frame(height: 2)
                .overlay(Color(hue: 0, saturation: 0, brightness: 0.83))
            
            ScrollView {
                // Information for each dish in the cart
                ForEach(Array(dishes.keys)) { dish in
                    ItemRow(dish: dish, quantity: dishes[dish]!)
                }
                
                // Subtotal
                HStack {
                    Text("Subtotal")
                        .font(.system(size: 22))
                        .bold()
                    Spacer()
                    
//                    Text("$\(computeSubtotal())")
//                        .font(.system(size: 20))
//                        .bold()
                    
                    Text("$123.5")
                        .font(.system(size: 20))
                        .bold()
                }
                .padding()
            }
            
            Divider()
                .frame(height: 2)
                .overlay(Color(hue: 0, saturation: 0, brightness: 0.83))
            
            Spacer()
            
            // Buttons to Checkout and Add items
            VStack(spacing: 30) {
                // Checkout button
                Button {
                    print("kdjf")
                } label: {
                    Text("Go to checkout")
                        .font(.system(size: 22))
                        .bold()
                        .foregroundColor(.white)
                        .background(
                            Rectangle()
                                .fill(.black)
                                .frame(width: 350 , height: 50)
                        )
                }
                
                // Add items button
                Button {
                    print("kdjf")
                } label: {
                    Text("Add items")
                        .font(.system(size: 22))
                        .bold()
                        .foregroundColor(.black)
                        .background(
                            Rectangle()
                                .fill(Color(hue: 0, saturation: 0, brightness: 0.87))
                                .frame(width: 350 , height: 50)
                        )
                }
            }
        }
    }
}

struct ItemRow: View {
    
    var dish: Dish
    var quantity: Int
    
    var body: some View {
        VStack(alignment: .center) {
            HStack(spacing: 20) {
                Text("\(quantity)")
                    .background(
                        Circle()
                            .fill(Color(hue: 0, saturation: 0, brightness: 0.83))
                            .frame(width: 30, height: 30)
                    )
                
                Text(dish.name)
                    .bold()
                    .fixedSize(horizontal: false, vertical: true)
                
                Spacer()
                
                Text("$\(dish.price * Double(quantity), specifier: "%.2f")")
            }
            .padding([.leading, .trailing], 20)
            .frame(height: 80)
            
            Divider()
                .padding([.leading, .trailing])
        }
//        .background(.red)
    }
}

struct OrderDetails_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetails(restaurant: Restaurant.all[0], dishes: [Dish.all[0]:2, Dish.all[3]:1, Dish.all[4]:4])
//        ItemRow(dish: Dish.all[0], quantity: 3)
    }
}
