//
//  HomeScreen.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/19/22.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        NavigationView {
            VStack() {
                VStack(spacing: -30) {
                    AppBarView()
                    SearchView()
                }
                
                ScrollView {
                    VStack(spacing: 30) {
                        // Ethnic restaurants
                        RestaurantCategories()
                            .padding(.vertical)
                        
                        // Popular restaurants
                        VStack {
                            HStack {
                                Text("Most Popular")
                                    .font(.system(size: 22))
                                    .bold()
                                    .padding()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 30) {
                                    let popularRestaurants = Restaurant.all.filter({ $0.isPopular })
                                    ForEach(popularRestaurants, id: \.self) { restaurant in
                                        NavigationLink {
                                            RestaurantMenu(restaurant: restaurant)
                                        } label: {
                                            RestaurantCard(restaurant: restaurant, width: 235)
                                        }
                                    }
                                }
                                .padding(.leading)
                            }
                        }
                        
                        // Highest rating restaurants
                        VStack {
                            HStack {
                                Text("Highest ratings")
                                    .font(.system(size: 22))
                                    .bold()
                                    .padding()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 30) {
                                    let highestRatings = Restaurant.all.filter({ $0.rating >= 4.0 }).sorted(by: { $0.rating > $1.rating })
                                    
                                    ForEach(highestRatings, id: \.self) { restaurant in
                                        NavigationLink {
                                            RestaurantMenu(restaurant: restaurant)
                                        } label: {
                                            RestaurantCard(restaurant: restaurant, width: 235)
                                        }
                                    }
                                }
                                .padding(.leading)
                            }
                        }
                    }
                }
            }
        }
    }
}



struct AppBarView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 12) {
                Text("Deliver to")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 16))
                Text("Vy, Tran")
                    .foregroundColor(Color.white)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                
            }
            .padding(.top)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell")
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
//                    .background(.gray)
                    .cornerRadius(50)
//                    .paddding(10)
                    .padding()
            }
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 150, alignment: .topLeading)
        .background(Color.black)
    }
}

struct SearchView: View {
    @State private var search: String = ""
    
    var body: some View {
        HStack {
            Image("search")
                .padding(.trailing, 8)
            TextField("Search for restaurant or food", text: $search)
                .frame(height: 30)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(18.0)
        .padding(.horizontal)
        .shadow(color: Color.black.opacity(0.15), radius: 8)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
