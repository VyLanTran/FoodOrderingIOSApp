//
//  FoodOrderingApp.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/19/22.
//

import SwiftUI

@main
struct FoodOrderingApp: App {
    
    @StateObject var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(cartManager)
        }
    }
}
