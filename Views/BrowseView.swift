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
        VStack {
            //TODO: Search bar stays on top as we scroll down
            Text("Top bar")
            
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
                        HStack(spacing: 15) {
                            CategoryCard2(category: "Mexican", image: Image("Mexican"))
                            CategoryCard2(category: "Italian", image: Image("Italian"))
                        }
                        .padding(.horizontal)
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
            
            Spacer()

            BottomNavBar()
                .padding(.top)
        }
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
