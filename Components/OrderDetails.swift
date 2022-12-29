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
    @Environment(\.presentationMode) var presentationMode
    var restaurant: Restaurant
    var dishes: [Dish: Int]
    @Binding var restaurantShowSheet: Bool
    
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
                // Shortened view of the RestaurantMenu
                ScrollView {
                    ZStack(alignment: .topLeading) {
                        VStack {
                            ForEach(restaurant.menu, id: \.id) { dish in
                                DishCard(dish: dish)
                            }
                            
                            Divider()
                        }
                        
                        // Close button
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                                .padding(12)
                                .foregroundColor(.black)
                                .background(Color(hue: 0, saturation: 0, brightness: 0.878))
                                .cornerRadius(50)
                        }
                        .padding(10)
                    }
                }
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
            if cartManager.order[restaurant.name]!.count == 0 {
                cartManager.order[restaurant.name] = nil
                restaurantShowSheet = false
            }
        }
        .listRowInsets(EdgeInsets())
        .listRowSeparator(.hidden)
    }
}

struct ItemRow: View {
    
    @State var showSheet: Bool = false
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
        .onTapGesture {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            DishDetails(dish: dish, isUpdate: true)
        }
    }
}
