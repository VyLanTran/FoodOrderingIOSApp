//
//  OrderDetails.swift
//  FoodOrdering
//
//  Created by Vy Tran on 12/25/22.
//

import SwiftUI

struct OrderDetails: View {
    
    @State var showSheet: Bool = false
    @EnvironmentObject var cartManager: CartManager
    var restaurant: Restaurant
    var dishes: [Dish: Int]
    
    
    func computeSubtotal()  -> Double {
        var subtotal = 0.0

        for dish in dishes.keys {
            subtotal += dish.price * Double(dishes[dish]!)
        }
        return subtotal
    }
    
    var body: some View {
        VStack {
            // Restaurant's name
            Text(restaurant.name)
                .font(.system(size: 20))
                .bold()
                .padding([.top])
            
            Divider()
                .frame(height: 2)
                .overlay(Color(hue: 0, saturation: 0, brightness: 0.83))
            
            
            List {
                listItems(for: Array(dishes.keys))
            }
            .listStyle(PlainListStyle())
            
            
            // Subtotal
            HStack {
                Text("Subtotal")
                    .font(.system(size: 22))
                    .bold()
                Spacer()
                
                let subtotal = computeSubtotal()
                Text("$\(subtotal, specifier: "%.2f")")
                    .font(.system(size: 20))
                    .bold()
            }
            .padding()
        }
            
        Divider()
            .frame(height: 2)
            .overlay(Color(hue: 0, saturation: 0, brightness: 0.83))
            .padding([.bottom])
        
                    
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
                showSheet.toggle()
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
            .sheet(isPresented: $showSheet) {
                RestaurantMenu(restaurant: restaurant)
            }
        }
    }
    
    private func listItems(for listDishes: [Dish]) -> some View {
        ForEach(listDishes, id: \.self) { dish in
            ItemRow(dish: dish, quantity: dishes[dish]!)
        }
        .onDelete { indexSet in
            let key = listDishes[indexSet.first!]
            cartManager.order[restaurant.name]!.removeValue(forKey: key)
        }
        .listRowInsets(EdgeInsets())
        .listRowSeparator(.hidden)
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
            .padding()
            .padding([.leading], 10)
            .frame(height: 70)
            
            Divider()
                .padding([.leading, .trailing])
        }
    }
}

struct OrderDetails_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetails(restaurant: Restaurant.all[0], dishes: [Dish.all[0]:2, Dish.all[3]:1, Dish.all[4]:4])
//        ItemRow(dish: Dish.all[0], quantity: 3)
    }
}
