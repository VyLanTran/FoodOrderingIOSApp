//
//  BrowseView.swift
//  FoodOrdering
//
//  Created by Vy Tran on 12/28/22.
//

import SwiftUI

struct BrowseView: View {
    
    let columns = [GridItem(.adaptive(minimum: 170))]
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                VStack(spacing: 30) {
                    // Top categories
                    VStack {
                        HStack {
                            Text("Top Categories")
                                .font(.system(size: 20))
                                .bold()
                                .padding()
                            Spacer()
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                NavigationLink {
                                    RestaurantsView(restaurantCategory: RestaurantCategory.coffeeAndTea)
                                } label: {
                                    CategoryCard2(category: "Coffee and Tea", image: Image("Coffee and Tea"))
                                }
                                NavigationLink {
                                    RestaurantsView(restaurantCategory: RestaurantCategory.healthy)
                                } label: {
                                    CategoryCard2(category: "Healthy", image: Image("Healthy"))
                                }
                                NavigationLink {
                                    RestaurantsView(restaurantCategory: RestaurantCategory.fastFood)
                                } label: {
                                    CategoryCard2(category: "Fast Food", image: Image("Fast Food"))
                                }
                                NavigationLink {
                                    RestaurantsView(restaurantCategory: RestaurantCategory.breakfastAndBrunch)
                                } label: {
                                    CategoryCard2(category: "Breakfast and Brunch", image: Image("Breakfast and Brunch"))
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    // All categories
                    VStack {
                        HStack {
                            Text("All Categories")
                                .font(.system(size: 20))
                                .bold()
                                .padding()
                            Spacer()
                        }
                        
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(RestaurantCategory.allCases, id: \.id) { category in
                                NavigationLink {
                                    RestaurantsView(restaurantCategory: category)
                                } label: {
                                    CategoryCard2(category: category.rawValue, image: Image("\(category.rawValue)"))
                                }
                            }
                        }
                        .padding([.leading, .trailing])
                    }
                }
            }
            .navigationBarTitle("Restaurant Categories", displayMode: .inline)
        }
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
