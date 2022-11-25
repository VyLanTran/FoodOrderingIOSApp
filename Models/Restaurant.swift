//
//  Restaurants.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/21/22.
//

import Foundation

enum RestaurantCategory: String, CaseIterable, Identifiable  {
    var id: String { self.rawValue }

    case american = "American"
    case chinese = "Chinese"
    case mexican = "Mexican"
    case italian = "Italian"
    case japanese = "Japanese"
    case indian = "Indian"
}

struct Restaurant: Identifiable {
    var id = UUID()
    var category: RestaurantCategory.RawValue
    var name: String
    var image: String
    var rating: Double
    var address: String
    
//    var isOpen: Bool
//    var openHours: String
    var menu: [Dish]
}

extension Restaurant {
    static let all: [Restaurant] = [
        Restaurant(
            category: "American",
            name: "Red Lobster",
            image: "https://www.fsrmagazine.com/sites/default/files/styles/story_image_720x430/public/2022-07/Red-Lobster-Signature-Feast.jpg?itok=PioPmztt",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA",
            menu: Dish.all.filter { $0.restaurant == "Red Lobster"}
        ),
        Restaurant(
            category: "American",
            name: "Outback Steakhouse",
            image: "https://media-cdn.tripadvisor.com/media/photo-s/18/4e/c4/71/photo0jpg.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Outback Steakhouse"}
        ),
        Restaurant(
            category: "American",
            name: "Buffalo Wild Wings",
            image: "https://i.insider.com/577418514321f1d01a8b4e2f?width=1300&format=jpeg&auto=webp",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Buffalo Wild Wings"}
        ),
        Restaurant(
            category: "American",
            name: "Bonefish Grill",
            image: "https://birkdalevillage.com/media/1123/bonefish.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Bonefish Grill"}
        ),
        Restaurant(
            category: "American",
            name: "The Cheesecake Factory",
            image: "https://www.bridgestreethuntsville.com/wp-content/uploads/2021/02/DSC6485-scaled.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "The Cheesecake Factory"}
        ),
        Restaurant(
            category: "Chinese",
            name: "Panda Express",
            image: "https://mallmaverick.imgix.net/web/property_managers/42/properties/56/all/20210610205356/pandaexpress-890x614.png",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA",
            menu: Dish.all.filter { $0.restaurant == "Panda Express"}
        ),
        Restaurant(
            category: "Chinese",
            name: "Mark Pi's",
            image: "https://www.mashed.com/img/gallery/chinese-chain-restaurants-ranked-worst-to-best/8-mark-pis-1611672738.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Mark Pi's"}
        ),
        Restaurant(
            category: "Chinese",
            name: "P.F. Chang’s",
            image: "https://www.pfchangs.com/images/default-source/menu/noodles-rice/signaturelomein-1200x80001f21cdc-9969-422e-b18f-2baa8439b0f3.jpg?sfvrsn=829c8ba6_3",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "P.F. Chang’s"}
        ),
        Restaurant(
            category: "Chinese",
            name: "Leann Chin",
            image: "https://i.pinimg.com/originals/82/50/2b/82502b7b074c365a82be665ac0fbf975.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Leann Chin"}
        ),
        Restaurant(
            category: "Chinese",
            name: "Din Tai Fung",
            image: "https://media.timeout.com/images/105868042/750/422/image.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Din Tai Fung"}
        )
    ]
}
    
