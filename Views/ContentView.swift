//
//  ContentView.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/19/22.
//

import SwiftUI

enum Tag {
    case homeScreen
    case browseView
    case cartView
}

struct ContentView: View {
    
    @EnvironmentObject var cartManager: CartManager
    @State var selectedTab = Tag.homeScreen
//    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
//        switch viewRouter.currentPage {
//        case .homeScreen:
//            HomeScreen()
//        case .cartView:
//            CartView()
//        case .browseView:
//            BrowseView()
//        }
        
        
        TabView(selection: $selectedTab) {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(Tag.homeScreen)
            
            BrowseView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Browse")
                }
                .tag(Tag.browseView)
                    
            CartView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Cart")
                }
                .tag(Tag.cartView)
                .badge(cartManager.getNumberOfItems())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .environmentObject(ViewRouter())
            .environmentObject(CartManager())
    }
}

