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
    case thai = "Thai"
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
        // AMERICAN
        Restaurant(
            category: "American",
            name: "Red Lobster",
            image: "https://www.fsrmagazine.com/sites/default/files/styles/story_image_720x430/public/2022-07/Red-Lobster-Signature-Feast.jpg?itok=PioPmztt",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA",
            menu: Dish.all.filter { $0.restaurant == "Red Lobster" }
        ),
        Restaurant(
            category: "American",
            name: "Outback Steakhouse",
            image: "https://media-cdn.tripadvisor.com/media/photo-s/18/4e/c4/71/photo0jpg.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Outback Steakhouse" }
        ),
        Restaurant(
            category: "American",
            name: "Buffalo Wild Wings",
            image: "https://i.insider.com/577418514321f1d01a8b4e2f?width=1300&format=jpeg&auto=webp",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Buffalo Wild Wings" }
        ),
        Restaurant(
            category: "American",
            name: "Bonefish Grill",
            image: "https://www.homeofgolf.com/wp-content/uploads/2017/11/bonefish-food-430x250-1.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Bonefish Grill" }
        ),
        Restaurant(
            category: "American",
            name: "The Cheesecake Factory",
            image: "https://www.bridgestreethuntsville.com/wp-content/uploads/2021/02/DSC6485-scaled.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "The Cheesecake Factory" }
        ),
        
        
        // CHINESE
        Restaurant(
            category: "Chinese",
            name: "Panda Express",
            image: "https://mallmaverick.imgix.net/web/property_managers/42/properties/56/all/20210610205356/pandaexpress-890x614.png",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA",
            menu: Dish.all.filter { $0.restaurant == "Panda Express" }
        ),
        Restaurant(
            category: "Chinese",
            name: "Mark Pi's",
            image: "https://www.mashed.com/img/gallery/chinese-chain-restaurants-ranked-worst-to-best/8-mark-pis-1611672738.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Mark Pi's" }
        ),
        Restaurant(
            category: "Chinese",
            name: "P.F. Chang’s",
            image: "https://www.pfchangs.com/images/default-source/menu/noodles-rice/signaturelomein-1200x80001f21cdc-9969-422e-b18f-2baa8439b0f3.jpg?sfvrsn=829c8ba6_3",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "P.F. Chang’s" }
        ),
        Restaurant(
            category: "Chinese",
            name: "Leann Chin",
            image: "https://i.pinimg.com/originals/82/50/2b/82502b7b074c365a82be665ac0fbf975.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Leann Chin" }
        ),
        Restaurant(
            category: "Chinese",
            name: "Din Tai Fung",
            image: "https://media.timeout.com/images/105868042/750/422/image.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Din Tai Fung" }
        ),
        
        
        // MEXICAN
        Restaurant(
            category: "Mexican",
            name: "Chipotle",
            image: "https://img.ctykit.com/cdn/va-rosslyn/images/tr:w-1800/chipotle---web.png",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Chipotle" }
        ),
        Restaurant(
            category: "Mexican",
            name: "Qdoba Mexican Eats",
            image: "https://pbs.twimg.com/media/Et9yTuSWYAMRdqv.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Qdoba Mexican Eats" }
        ),
        Restaurant(
            category: "Mexican",
            name: "Taco Bell",
            image: "https://tacobell.es/wp-content/uploads/2017/05/05_BODEGON_WEB_560X410_TACOS_X6_09FEB.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Taco Bell" }
        ),
        Restaurant(
            category: "Mexican",
            name: "Moe’s Southwest Grill",
            image: "https://gray-whsv-prod.cdn.arcpublishing.com/resizer/7Jr9w6RP0kaQnLwFtdSaC8oM-3I=/1200x675/smart/filters:quality(85)/cloudfront-us-east-1.images.arcpublishing.com/gray/MVAKFYVN4JAFNPO35S7GGKDMTM.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Moe’s Southwest Grill" }
        ),
        Restaurant(
            category: "Mexican",
            name: "Pappasito’s Cantina",
            image: "https://s3-media0.fl.yelpcdn.com/bphoto/9QOG5zDBn_xWPdUGRpDS-w/348s.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Pappasito’s Cantina" }
        ),
        
        
        // ITALIAN
        Restaurant(
            category: "Italian",
            name: "Fazoli’s",
            image: "https://fazolis.com/wp-content/uploads/2019/03/P2_19_Images_700x486_GROUP.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Fazoli’s" }
        ),
        Restaurant(
            category: "Italian",
            name: "Olive Garden",
            image: "https://media.olivegarden.com/en_us/images/product/chicken-and-shrimp-carbonara-dpv-590x365.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Olive Garden" }
        ),
        Restaurant(
            category: "Italian",
            name: "Spaghetti Warehouse",
            image: "https://cdnimg.webstaurantstore.com/images/products/large/66815/2113528.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Spaghetti Warehouse" }
        ),
        Restaurant(
            category: "Italian",
            name: "Carrabba’s Italian Grill",
            image: "https://az683702.vo.msecnd.net/assets/menu-photos/family_bundle_spaghetti_menu_item_200728.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Carrabba’s Italian Grill" }
        ),
        Restaurant(
            category: "Italian",
            name: "Bertucci’s",
            image: "https://www.bertuccis.com/wp-content/uploads/2022/08/lunch-pizza.png",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Bertucci’s" }
        ),
        
        
        // JAPANESE
        Restaurant(
            category: "Japanese",
            name: "Tenya Japanese Eatery",
            image: "https://media-cdn.tripadvisor.com/media/photo-s/0d/ed/4a/25/caption.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Tenya Japanese Eatery" }
        ),
        Restaurant(
            category: "Japanese",
            name: "CoCo Ichibanya",
            image: "https://cdn.vox-cdn.com/thumbor/O4hfza3mIKtZfc6AR6jpTl_gaSI=/0x0:900x631/1200x800/filters:focal(378x244:522x388)/cdn.vox-cdn.com/uploads/chorus_image/image/66371464/cocoich2.0.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "CoCo Ichibanya" }
        ),
        Restaurant(
            category: "Japanese",
            name: "Tonchin",
            image: "https://savorjapan.com/gg/content_image/t0005_001_20171208021347.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Tonchin" }
        ),
        Restaurant(
            category: "Japanese",
            name: "Sushi Tama",
            image: "https://global.discourse-cdn.com/business5/uploads/berkeleyfoodie/original/3X/8/2/82fdb211c63d4d4347e04898ad90da74001c87d3.jpeg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Sushi Tama" }
        ),
        Restaurant(
            category: "Japanese",
            name: "Ootoya",
            image: "https://ootoya.us/wp-content/uploads/2020/04/43_katsu-ju.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Ootoya" }
        ),
        Restaurant(
            category: "Japanese",
            name: "Ippudo",
            image: "https://static01.nyt.com/images/2021/01/06/dining/04Burner-Ramen/04Burner-Ramen-superJumbo.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Ippudo" }
        ),
        
        
        // THAI
        Restaurant(
            category: "Thai",
            name: "Lotus of Siam",
            image: "https://media-cdn.tripadvisor.com/media/photo-p/1c/7f/2a/ba/photo1jpg.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Lotus of Siam" }
        ),
        Restaurant(
            category: "Thai",
            name: "Ruan Thai",
            image: "https://img2.10bestmedia.com/Images/Photos/336849/KK1fish1_55_660x440.jpg",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Ruan Thai" }
        ),
        Restaurant(
            category: "Thai",
            name: "Sticky Rice",
            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXjY_zBQL2jwfwx1b_LDsb8GrAgn3I3YM5ABnUzcv6p51SHYz5949jl9M3jIzuIq3BcAM&usqp=CAU",
            rating: 3,
            address: "1951 E 3rd St, Williamsport, PA 17701",
            menu: Dish.all.filter { $0.restaurant == "Sticky Rice" }
        ),
    ]
}
    
