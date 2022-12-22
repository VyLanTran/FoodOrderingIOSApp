//
//  DishOverview.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/22/22.
//

import SwiftUI

struct DishCard: View {
    var dish: Dish
    @State var showSheet: Bool = false
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack {
            Divider()
            
            HStack(spacing: 20) {
                ZStack(alignment: .topTrailing) {
                    AsyncImage(
                        url: URL(string: dish.image),
                        content: { image in
                            image.resizable()
                        },
                        placeholder: {
                            Image(systemName: "photo")
                        }
                    )
                    .frame(width: 120, height: 100)
                    .padding(.leading)
                    
                    Button {
                        cartManager.addToCart(dish: dish)
                        print(cartManager.dishes.count)
                    } label: {
                        Image(systemName: "plus")
                            .padding(10)
                            .foregroundColor(.white)
                            .background(.black)
                            .cornerRadius(50)
                            .padding()
                    }

                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(dish.name)
                        .font(.system(size: 16))
                        .bold()
                   
                    Text("$\(dish.price, specifier: "%.2f")")
                        .font(.subheadline)
                        .fontWeight(.light)

                    HStack(spacing: 35) {
                        if (dish.isNew) {
                            Text("New")
                                .foregroundColor(.white)
                                .background(
                                    Rectangle()
                                        .fill(Color(hue: 1.0, saturation: 0.93, brightness: 0.89))
                                        .frame(width: 55, height: 25)
                                        .cornerRadius(15)
                                )
                        }
                        if (dish.isPopular) {
                            Text("Popular")
                                .foregroundColor(.white)
                                .background(
                                    Rectangle()
                                        .fill(Color(hue: 0.31, saturation: 1, brightness: 0.5))
                                        .frame(width: 78, height: 25)
                                        .cornerRadius(15)
                                )
                        }
                    }
                    .offset(x: 9)
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.red)
                    .font(.system(size: 30))
                    .padding(.trailing)
            }
            .frame(height: 120)
//            .onTapGesture {
//                showSheet.toggle()
//            }
//            .sheet(isPresented: $showSheet) {
//                DishDetails(dish: dish).environmentObject(cartManager)
//            }
        }
    }
}

struct DishCard_Previews: PreviewProvider {
    static var previews: some View {
        DishCard(dish: Dish.all[1])
            .environmentObject(CartManager())
    }
}
