//
//  DishData.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/20/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case appetizer = "Appetizer"
    case soupAndSide = "SoupAndSide"
    case main = "Main"
    case dessert = "Dessert"
    case drink = "Drink"
    
}

struct Dish: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var image: String
    var price: Double
    var description: String
    var restaurant: String
    var category: Category.RawValue
    var isPopular: Bool
    var isNew: Bool
    
//    let extra: String
    
    init(name: String, image: String, price: Double, description: String = "", restaurant: String, category: Category.RawValue, isPopular: Bool = false, isNew: Bool = false) {
        self.name = name
        self.image = image
        self.price = price
        self.description = description
        self.restaurant = restaurant
        self.category = category
        self.isPopular = isPopular
        self.isNew = isNew
    }
}

extension Dish {
    static let all: [Dish] = [
        Dish(
            name: "White Wine and Roasted-Garlic Mussels",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0001127M_5A4252D9CF97737FE053046613AC9B28.jpg?t=2019-09-05T15:31:01",
            price: 12.50,
            description: "The best of the ocean — and the kitchen — fits in one little bowl. As rich and delicious as lobster bisque soup can be, it’s a lobster bisque recipe that beats all",
            restaurant: "Red Lobster",
            category: "Appetizer"
        ),
        Dish(
            name: "Lobster Bisque",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0001017M_A45BCFBE56A8C3C7E053046613AC5940.jpg?t=2020-04-30T15:50:51",
            price: 7.30,
            description: "",
            restaurant: "Red Lobster",
            category: "SoupAndSide",
            isPopular: true,
            isNew: true
        ),
        Dish(
            name: "New England Clam Chowder",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0001002M_88C889E454C80E10E053046613AC6A61.jpg?t=2020-04-14T19:23:42",
            price: 7.00,
            description: "",
            restaurant: "Red Lobster",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Caesar Salad",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0006084M_5A920E1DC3F6D892E053046613AC34AA.jpg?t=2019-09-05T15:23:05",
            price: 5.80,
            description: "",
            restaurant: "Red Lobster",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Rock Lobster and Shrimp",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0030028M_E0DD5AA517B581ABE053077A13AC28EA.jpg?t=2022-06-09T13:44:34",
            price: 21.00,
            description: "",
            restaurant: "Red Lobster",
            category: "Main",
            isPopular: true
        ),
        Dish(
            name: "Seaside Shrimp Trio",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0002486M_5A4252D9CFEC737FE053046613AC9B28.jpg?t=2022-06-30T19:42:53",
            price: 21.50,
            description: "",
            restaurant: "Red Lobster",
            category: "Main"
        ),
        Dish(
            name: "Chocolate Wave Cake",
            image: "https://img-ecomm-rl-prod.azureedge.net/ecomm-image/640x360/0005121M_5A4252D9D0E6737FE053046613AC9B28.jpg?t=2020-05-31T13:51:19",
            price: 14.60,
            description: "",
            restaurant: "Red Lobster",
            category: "Dessert"
        ),
        
        
        Dish(
            name: "Nashville Hot Wings",
            image: "https://olo-images-live.imgix.net/3f/3fac034e5b1f4510b569f8f3fc5ef696.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=dc885863a6b60af90ba8e5d44f48322a",
            price: 14.99,
            description: "A pound of chicken wings fried then coated with our fiery Nashville-style dry rub. Served with our house-made Blue Cheese dressing and celery",
            restaurant: "Outback Steakhouse",
            category: "Appetizer"
        ),
        Dish(
            name: "Brisbane Caesar Salad",
            image: "https://olo-images-live.imgix.net/83/8344e9a1b4504c75a0478e2b0caf6651.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=7ae16f036fdb65909a4e7c1dab800c33",
            price: 12.49,
            description: "Crisp romaine lettuce and freshly made croutons tossed in our Caesar dressing",
            restaurant: "Outback Steakhouse",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Sirloin* & Tasmanian Shrimp",
            image: "https://olo-images-live.imgix.net/8f/8fd6afccde9d4adbbb1e35368e5b56c1.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=1c27ab9554f805efab1526a490f57c01",
            price: 18.99,
            description: "Our signature center-cut 6 oz sirloin topped with a spicy steak butter paired with our hand-breaded Bloomin' Fried Shrimp, tossed in our Nashville-style dry rub and drizzled with our spicy Bloom sauce. Served with choice of two sides",
            restaurant: "Outback Steakhouse",
            category: "Main"
        ),
        Dish(
            name: "Kingsland Pasta*",
            image: "https://olo-images-live.imgix.net/e6/e618776f51b64d77b6b9da6d35626762.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=acee56626657ca935eade6017ac87dac",
            price: 17.49,
            description: "A steakhouse twist on your favorite Queensland Pasta! Grilled steak and shrimp served over fettuccine noodles tossed in a bold Alfredo sauce. Want to add some heat? Spice it up with our Fresno Chili Jam",
            restaurant: "Outback Steakhouse",
            category: "Main",
            isNew: true
        ),
        Dish(
            name: "Bone-In Ribeye",
            image: "https://olo-images-live.imgix.net/c0/c023a1e9f23b4403a555af31bf707395.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=44819c01a619faa7e43e19ad6558c83a",
            price: 29.99,
            description: "Bone-in and extra marbled for maximum tenderness. Served with two freshly made sides",
            restaurant: "Outback Steakhouse",
            category: "Main"
        ),
        Dish(
            name: "Cinnamon Oblivion",
            image: "https://olo-images-live.imgix.net/ca/ca0053a07e0b4b55bbbf5f1bd5192cfb.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=d2b07cc7591f8f32bfab4882d6ea60d8",
            price: 8.99,
            description: "Vanilla ice cream rolled in cinnamon pecans topped with warm cinnamon apples, cinnamon croutons, caramel sauce and whipped cream",
            restaurant: "Outback Steakhouse",
            category: "Dessert"
        ),
        Dish(
            name: "Blueberry Lavender Lemonade",
            image: "https://olo-images-live.imgix.net/ed/ed2312db4ee04ddba35855a259d68c20.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=df76bde85a59f0cbd90eaef880e3b355",
            price: 10.00,
            description: "Inspired by Australia's lavender fields, this cocktail for 2 is handcrafted with Absolut Vodka, lavender, blueberry and Country Style Lemonade",
            restaurant: "Outback Steakhouse",
            category: "Drink",
            isPopular: true
        ),


        Dish(
            name: "Mozzarella Sticks",
            image: "https://images.ctfassets.net/l5fkpck1mwg3/79ppjVk4WLDzPkwE83Y4T5/3c09d886460e67ce3acf4f1e86705554/Appetizers_Mozzarella_Sticks.png?fm=avif&w=500&q=80",
            price: 5.99,
            description: "2,000 calories a day is used for general nutrition advice, but calorie needs vary.",
            restaurant: "Buffalo Wild Wings",
            category: "Appetizer"
        ),
        Dish(
            name: "Mac & Cheese",
            image: "https://images.ctfassets.net/l5fkpck1mwg3/xm6yFJf9paKbfJaqRHL9h/480a88ca9439adea65f242b91b53e8d0/Sides_Mac___Cheese.png?fm=avif&w=500&q=80",
            price: 5.99,
            description: "2,000 calories a day is used for general nutrition advice, but calorie needs vary.",
            restaurant: "Buffalo Wild Wings",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Traditional Wings",
            image: "https://images.ctfassets.net/l5fkpck1mwg3/1jM82VxqkC6RAPvpeVBKWT/13885bee6e1462794a43b8044b32d02d/Traditional_10_count_Medium.png?fm=avif&w=500&q=80",
            price: 17.99,
            description: "2,000 calories a day is used for general nutrition advice, but calorie needs vary.",
            restaurant: "Buffalo Wild Wings",
            category: "Main"
        ),
        Dish(
            name: "2 Buffalo Bird Dawgs + Fries",
            image: "https://images.ctfassets.net/l5fkpck1mwg3/45DLCfniJ27UvQ7x6ahZPk/5c2f9919a8e33b96f996ea55a87ad0d8/DEL2022-634951-Bird-Dawgs_BirdDawgs_2up_Buffalo_FF2_38_nShdw_4000x3000.png?fm=avif&w=500&q=80",
            price: 18.99,
            description: "2,000 calories a day is used for general nutrition advice, but calorie needs vary.",
            restaurant: "Buffalo Wild Wings",
            category: "Main"
        ),
        Dish(
            name: "Chocolate Fudge Cake",
            image: "https://images.ctfassets.net/l5fkpck1mwg3/2B9Ow6aUocotSoN7MP75Ph/cebffbe00c635179427bb6ff9410908b/Dessert_Chocolate_Cake_Ice_Cream.png?fm=avif&w=500&q=80",
            price: 6.99,
            description: "2,000 calories a day is used for general nutrition advice, but calorie needs vary.",
            restaurant: "Buffalo Wild Wings",
            category: "Dessert"
        ),
        Dish(
            name: "Fresh Brewed Iced Tea",
            image: "https://images.ctfassets.net/l5fkpck1mwg3/4Z7OM2KZuUFOHs1esWi3Nd/3096d2338b24b5ba201e69d2a375bbb1/10410029-ice-tea-drink.png?fm=avif&w=500&q=80",
            price: 4.00,
            description: "2,000 calories a day is used for general nutrition advice, but calorie needs vary.",
            restaurant: "Buffalo Wild Wings",
            category: "Drink"
        ),


        Dish(
            name: "Tempura Crunch Sashimi Tuna",
            image: "https://olo-images-live.imgix.net/75/75b8c2e4a0cf4eb48eba7110161cf91f.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=5bee4e5e7a1e1be90b28346b0ebf7100",
            price: 14.90,
            description: "Sushi-grade tuna, seared rare and sliced, with sashimi sauce and tempura flakes. Served with wasabi, soy sauce and a sriracha drizzle",
            restaurant: "Bonefish Grill",
            category: "Appetizer"
        ),
        Dish(
            name: "Florida Cobb Salad",
            image: "https://olo-images-live.imgix.net/c2/c28110745dfc409a89f01a25ad7c4f88.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=880053d8915cd61fecbd152f56a34b0c",
            price: 9.90,
            description: "Crisp chopped greens with mango, tomato, Blue cheese crumbles and pepitas, tossed in our citrus-herb vinaigrette with wood-grilled shrimp, or wood-grilled chicken",
            restaurant: "Bonefish Grill",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Old Fashioned Cedar Plank Salmon",
            image: "https://olo-images-live.imgix.net/39/395aa62e6ce8439a83c91cb1dab08179.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=4a3f4ef169dc626d8cb6b7c746c53c6f",
            price: 24.90,
            description: "Cedar plank roasted Salmon, brushed with a Jim Beam honey bourbon glaze, finished with Bordeaux cherry gastrique and fresh grated orange zest. Served with a choice of two signature sides",
            restaurant: "Bonefish Grill",
            category: "Main"
        ),
        Dish(
            name: "Georges Bank Scallops & Shrimp",
            image: "https://olo-images-live.imgix.net/25/254d5716b1ee495a814747785bcfb499.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=13b8bb6cc9005b1032c4f7bd40f36378",
            price: 24.90,
            description: "Sugar sweet yet firm texture scallops from Georges Bank perfectly paired with jumbo shrimp",
            restaurant: "Bonefish Grill",
            category: "Main"
        ),
        Dish(
            name: "Key Lime Cake",
            image: "https://olo-images-live.imgix.net/88/889c9fc679eb426899128dfe6b2525b2.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=ffa7baba7bd3863678f58cf62adbf658",
            price: 9.00,
            description: "A generous slice of vanilla citrus cake layered with sweet-tart key lime frosting, lightly dusted with coconut",
            restaurant: "Bonefish Grill",
            category: "Dessert"
        ),


        Dish(
            name: "Ahi Poke Nachos*",
            image: "https://olo-images-live.imgix.net/70/70b402a5d4624b458dff0098d2ec4d0b.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=1200&h=800&fit=fill&fm=png32&bg=transparent&s=399a7f313d6a0e806a1bc84792c0ebec",
            price: 9.00,
            description: "Crispy Wontons Covered with Hawaiian Style Ahi Tuna Poke, Avocado, Green Onion, Chiles, Sesame Seeds and Sriracha Aioli",
            restaurant: "The Cheesecake Factory",
            category: "Appetizer"
        ),
        Dish(
            name: "Truffle-Honey Chicken",
            image: "https://olo-images-live.imgix.net/a8/a8b97cc1ab064afc818bf378264c2a9d.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=1200&h=800&fit=fill&fm=png32&bg=transparent&s=689bc223e25472e77ce1625f5e01481e",
            price: 15.50,
            description: "Fried Chicken Breast with Truffle-Honey, Asparagus and Mashed Potatoes",
            restaurant: "The Cheesecake Factory",
            category: "Main"
        ),
        Dish(
            name: "Fettuccini Alfredo with Chicken",
            image: "https://olo-images-live.imgix.net/09/097f8f0b89534422813359e70629cd55.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=1200&h=800&fit=fill&fm=png32&bg=transparent&s=018c1c7d786262948f61d56859d62f1c",
            price: 14.99,
            description: "A Rich Parmesan Cream Sauce",
            restaurant: "The Cheesecake Factory",
            category: "Main"
        ),
        Dish(
            name: "Very Cherry Ghirardelli® Chocolate Cheesecake",
            image: "https://olo-images-live.imgix.net/ec/ec581fa90cc54d1eb865644641658244.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=1200&h=800&fit=fill&fm=png32&bg=transparent&s=c456e89cc5a1e99eaf54760675e4ffee",
            price: 7.70,
            description: "Cherry Cheesecake on a Layer of Fudge Cake, Loaded with Cherries and Ghirardelli® Chocolate",
            restaurant: "The Cheesecake Factory",
            category: "Dessert"
        ),


        Dish(
            name: "Chicken Egg Roll",
            image: "https://olo-images-live.imgix.net/52/524bbb9023e2409b8d3fceae944a808f.png?auto=format%2Ccompress&q=60&cs=tinysrgb&w=810&h=540&fit=crop&fm=png32&s=4f4cc30df356786bbe3968181f8c5160",
            price: 6.00,
            restaurant: "Panda Express",
            category: "Appetizer"
        ),
        Dish(
            name: "Chow Mein",
            image: "https://nomnom-files.pandaexpress.com/global/assets/modifiers/Sides_ChowMein.png",
            price: 15.49,
            restaurant: "Panda Express",
            category: "Main"
        ),
        Dish(
            name: "Honey Sesame Chicken Breast",
            image: "https://olo-images-live.imgix.net/c2/c23ffd19030e4ac69087df2184fbd23b.png?auto=format%2Ccompress&q=60&cs=tinysrgb&w=810&h=540&fit=crop&fm=png32&s=7e4ca8a9338dae1e52174487f3abb181",
            price: 16.50,
            restaurant: "Panda Express",
            category: "Main",
            isPopular: true
        ),
        Dish(
            name: "Honey Walnut Shrimp",
            image: "https://olo-images-live.imgix.net/e0/e065708712fb4fa2b43d3b6a34e7993d.png?auto=format%2Ccompress&q=60&cs=tinysrgb&w=810&h=540&fit=crop&fm=png32&s=a195a7d0bfcdab2002821f262b3fb624",
            price: 17.00,
            restaurant: "Panda Express",
            category: "Main",
            isPopular: true,
            isNew: true
        ),


        Dish(
            name: "Handmade Dumplings",
            image: "https://www.pfchangs.com/images/default-source/menu/dim-sum/porkdumplings-6ct-1200x80088af8643-30cc-4ab3-bfa5-58d30b740709.jpg?sfvrsn=710a7282_3",
            price: 11.00,
            description: "Pan-fried or steamed, light chili sauce drizzle",
            restaurant: "P.F. Chang’s",
            category: "Appetizer"
        ),
        Dish(
            name: "Egg Drop Soup",
            image: "https://www.pfchangs.com/images/default-source/menu/salads-soups/eggdropsoupbowl-1200x800153244cd-f8d7-41f5-9047-4bb50218f57f.jpg?sfvrsn=2531e03d_3",
            price: 10.50,
            description: "Velvety broth, julienned carrots, green onion",
            restaurant: "P.F. Chang’s",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Dynamite Roll",
            image: "https://www.pfchangs.com/images/default-source/menu/sushi/dynamiteshrimproll-1200x800a9be03ec-a6f1-42fa-8951-6859aa2589ce.jpg?sfvrsn=4d62cfe4_3",
            price: 15.00,
            description: "Tempura-battered shrimp, signature California roll, sriracha aioli, umami sauce, smoked tableside",
            restaurant: "P.F. Chang’s",
            category: "Main"
        ),
        Dish(
            name: "Mongolian Beef Bowl",
            image: "https://www.pfchangs.com/images/default-source/menu/lunch/mongolianbeefbowl-1200x8006af35fee-763e-4187-9071-8fc8ce41660d.jpg?sfvrsn=3a93d58d_3",
            price: 16.49,
            description: "Sweet soy glaze, garlic, snipped green onion",
            restaurant: "P.F. Chang’s",
            category: "Main"
        ),


        Dish(
            name: "Potstickers",
            image: "https://www.leeannchin.com/assets/media/menu/potstickers.jpg",
            price: 5.70,
            description: "Wok-seared dumplings with chicken and vegetables",
            restaurant: "Leann Chin",
            category: "Appetizer"
        ),
        Dish(
            name: "Firecracker Shrimp",
            image: "https://www.leeannchin.com/assets/media/menu/firecrackershrimp.jpg",
            price: 11.25,
            description: "Tender breaded shrimp wok-tossed in a sweet and spicy firecracker sauce",
            restaurant: "Leann Chin",
            category: "Main"
        ),
        Dish(
            name: "Vegetable Fried Rice",
            image: "https://www.leeannchin.com/assets/media/menu/vegetablefriedrice.jpg",
            price: 10.50,
            description: "Vegetable Fried Rice with mushrooms, green onions, sprouts and egg, seasoned with mushroom soy sauce",
            restaurant: "Leann Chin",
            category: "Main"
        ),


        Dish(
            name: "Steamed Soup with Bone-in Chicken",
            image: "https://www.dintaifungusa.com/us/image/2449",
            price: 10.50,
            description: "Choice cuts of chicken are steamed for hours with fresh ginger and green onion. This signature Din Tai Fung dish is light, but packs a rich aroma",
            restaurant: "Din Tai Fung",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Kurobuta Pork Xiao Long Bao",
            image: "https://www.dintaifungusa.com/us/image/1294",
            price: 10.50,
            description: "The modest dumpling that started a legacy",
            restaurant: "Din Tai Fung",
            category: "Main"
        ),


        Dish(
            name: "Salad",
            image: "https://www.chipotle.com/content/dam/poc/order/images/entrees/salad.jpg",
            price: 6.50,
            description: "Your choice of meat or sofritas served with our fresh supergreens lettuce blend made of Romaine, Baby Kale, and Baby Spinach. Add beans, queso blanco, salsa, guacamole, sour cream or cheese and top it off with our signature Chipotle-Honey Vinaigrette",
            restaurant: "Chipotle",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Chips & Guacamole",
            image: "https://www.chipotle.com/content/dam/poc/order/images/entrees/chips-quac.jpg",
            price: 4.50,
            description: "Everything else you need to round out your meal",
            restaurant: "Chipotle",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Burrito",
            image: "https://www.chipotle.com/content/dam/chipotle/global/menu/meal-types/cmg-10001-burrito/web-desktop/order.png",
            price: 10.50,
            description: "Your choice of freshly grilled meat or sofritas wrapped in a warm flour tortilla with rice, beans, or fajita veggies, and topped with guac, salsa, queso blanco, sour cream or cheese",
            restaurant: "Chipotle",
            category: "Main"
        ),
        Dish(
            name: "Burrito Bowl",
            image: "https://www.chipotle.com/content/dam/poc/order/images/entrees/bowl.jpg",
            price: 9.70,
            description: "Your choice of freshly grilled meat or sofritas served in a delicious bowl with rice, beans, or fajita veggies, and topped with guac, salsa, queso blanco, sour cream or cheese",
            restaurant: "Chipotle",
            category: "Main"
        ),
        Dish(
            name: "Tacos",
            image: "https://www.chipotle.com/content/dam/poc/order/images/entrees/tacos.jpg",
            price: 9.55,
            description: "Your choice of freshly grilled meat, sofritas, or guacamole, and up to five toppings served in a soft or hard-shell tortilla",
            restaurant: "Chipotle",
            category: "Main"
        ),


        Dish(
            name: "Steak Fajita Quesadilla",
            image: "https://olo-images-live.imgix.net/69/69517a6039d245ffb42c483a9f7940f3.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=1050&h=699&fit=fill&fm=png32&bg=transparent&s=6b22a2e9abef1357daf9b0b00169dcaa",
            price: 11.15,
            description: "Grilled steak, grilled fajita veggies, pico de gallo, salsa roja and shredded 3-cheese blend grilled to perfection in a flour or whole wheat tortilla. Served with hand-crafted guac and sour cream. [Cal 1100] For additional ingredients or substitutions, please order a Create Your Own Entree",
            restaurant: "Qdoba Mexican Eats",
            category: "Main"
        ),
        Dish(
            name: "Chicken Queso Burrito",
            image: "https://olo-images-live.imgix.net/8b/8bd26b3e34dd44eda89502811ca20709.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=1050&h=699&fit=fill&fm=png32&bg=transparent&s=2d547c2108c99852339ef54a4cff8505",
            price: 9.85,
            description: "Grilled adobo chicken, signature 3-Cheese queso, pico de gallo, shredded 3-cheese blend, chile corn salsa, cilantro lime rice, and black beans, wrapped in a flour or whole wheat tortilla. [Cal 1050] For additional ingredients or substitutions, please order a Create Your Own Entree",
            restaurant: "Qdoba Mexican Eats",
            category: "Main"
        ),


        Dish(
            name: "Nacho Fries",
            image: "https://www.tacobell.com/images/28095_nacho_fries_269x269.jpg",
            price: 4.50,
            restaurant: "Taco Bell",
            category: "Appetizer"
        ),
        Dish(
            name: "Nacho Chess Doritos Locos Tacos",
            image: "https://www.tacobell.com/images/22172_nacho_cheese_doritos_locos_tacos_269x269.jpg",
            price: 6.50,
            restaurant: "Taco Bell",
            category: "Main"
        ),
        Dish(
            name: "Mexican Pizza Combo",
            image: "https://www.tacobell.com/images/22604_4._mexican_pizza_combo_269x269.jpg",
            price: 8.99,
            restaurant: "Taco Bell",
            category: "Main"
        ),


        Dish(
            name: "Moe's Famous Queso",
            image: "https://www.moes.com/-/media/moes/menu/sides/moes_457694_menu-image-updates_891x490_queso_v1.jpg?v=1&d=20201125T100843Z&h=490&w=891&la=en&hash=D59264BB89F016C535D235E6F140F6C2",
            price: 3.99,
            description: "Blended with 3 cheeses and diced jalapeños, our Famous Queso is a must have",
            restaurant: "Moe’s Southwest Grill",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Mexican Burrito with Guac",
            image: "https://www.moes.com/-/media/moes/menu/burritos/moes_457694_menu-image-updates_891x490_burrito_v1.jpg?v=1&d=20201117T140643Z&h=490&w=891&la=en&hash=30ACA4DAA51298F34E860EA8C926F6B7",
            price: 8.50,
            description: "It's big. It's legendary. Our Homewrecker comes with your choice of protein, rice, beans, shredded cheese, shredded lettuce, pico de gallo, sour cream and guac. And yes, guac is included",
            restaurant: "Moe’s Southwest Grill",
            category: "Main"
        ),


        Dish(
            name: "Pappasito's Salad",
            image: "https://files.pappasitos.com/images/dyn/menus/menu_pic_397.jpg",
            price: 5.55,
            description: "Fresh greens, tortilla chips, avocado, red onion, tomato & Monterey Jack cheese with lime vinaigrette",
            restaurant: "Pappasito’s Cantina",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Rosa",
            image: "https://files.pappasitos.com/images/dyn/menus/menu_pic_442.jpg",
            price: 8.70,
            description: "Chicken fajita soft taco with cheese, lettuce, pico, sour cream & two cheese enchiladas",
            restaurant: "Pappasito’s Cantina",
            category: "Main"
        ),


        Dish(
            name: "Baked Italian Meatballs",
            image: "https://deliverlogic-common-assets.s3.amazonaws.com/editable/images/kentucky/menuitems/2798.jpg",
            price: 5.09,
            description: "5 meatballs topped with marinara sauce & baked with mozzarella & provolone cheeses",
            restaurant: "Fazoli’s",
            category: "Appetizer"
        ),
        Dish(
            name: "Gluten Friendly Chicken Pesto Rotini",
            image: "https://deliverlogic-common-assets.s3.amazonaws.com/editable/images/kentucky/menuitems/2826.jpg",
            price: 9.59,
            description: "Gluten friendly rotini topped with Alfredo sauce, roasted chicken, and baked with mozzarella cheese. Topped with basil pesto",
            restaurant: "Fazoli’s",
            category: "Main"
        ),
        Dish(
            name: "Chicken Carbonara",
            image: "https://deliverlogic-common-assets.s3.amazonaws.com/editable/images/kentucky/menuitems/2825.jpg",
            price: 9.29,
            description: "Spaghetti topped with creamy Alfredo sauce with hand-chopped bacon, roasted chicken, and parmesan-roasted broccoli. Topped with freshly ground black pepper and Parmesan cheeses",
            restaurant: "Fazoli’s",
            category: "Main"
        ),


        Dish(
            name: "Spinach-Artichoke Dip",
            image: "https://media.olivegarden.com/en_us/images/product/Spinach-Artichoke-Dip-dpv-1180x730.jpg",
            price: 10.99,
            description: "A blend of spinach, artichokes and cheeses served warm with flatbread crisps",
            restaurant: "Olive Garden",
            category: "Appetizer"
        ),
        Dish(
            name: "Chicken and Shrimp Carbonara",
            image: "https://media.olivegarden.com/en_us/images/product/chicken-and-shrimp-carbonara-dpv-590x365.jpg",
            price: 21.49,
            description: "Sautéed seasoned chicken, shrimp and spaghetti tossed in a creamy sauce with bacon and roasted red peppers",
            restaurant: "Olive Garden",
            category: "Main"
        ),
        Dish(
            name: "Spaghetti with Meat Sauce",
            image: "https://media.olivegarden.com/en_us/images/marketing/Spaghetti_with_Meat_Sauce_1180x730.jpg",
            price: 12.99,
            description: "Our homemade meat sauce served over spaghetti",
            restaurant: "Olive Garden",
            category: "Main"
        ),


        Dish(
            name: "Mediterranean Shrimp Pasta Salad",
            image: "https://www.unicornsinthekitchen.com/wp-content/uploads/2019/05/Creamy-Shrimp-Pasta-Salad-square.jpg",
            price: 12.99,
            description: "Marinated grilled shrimp, corkscrew pasta, fresh mozzarella, cherry tomatoes, red onions and crisp romaine tossed in our house-made creamy Parmesan ranch dressing",
            restaurant: "Spaghetti Warehouse",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Sicilian Sausage Sandwich",
            image: "https://schneiders.ca/wp-content/uploads/2019/06/Recipe_GrilledSausageChimichurri_707x402.jpg",
            price: 13.59,
            description: "Our signature Italian sausage (two of them!) with roasted red onions, sautéed red and green bell peppers, topped with our house-made marinara sauce and fresh mozzarella cheese on a lightly toasted classic hoagie",
            restaurant: "Spaghetti Warehouse",
            category: "Main"
        ),


        Dish(
            name: "Meatballs & Ricotta",
            image: "https://olo-images-live.imgix.net/93/935968739f0d4f5a8bad4cd45f25975a.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=690fe453015024797683f070f4309a28",
            price: 6.99,
            description: "Simmered in our pomodoro sauce with ricotta and romano cheese",
            restaurant: "Carrabba’s Italian Grill",
            category: "Appetizer"
        ),
        Dish(
            name: "Short Rib Marsala",
            image: "https://olo-images-live.imgix.net/f0/f006cee254c74cbe9dd8085ce9c9f2ad.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=8f355644537cc2d4b27b2c95535cf992",
            price: 27.99,
            description: "Tender bone-in short rib served over garlic mashed potatoes and topped with our Lombardo Marsala wine sauce",
            restaurant: "Carrabba’s Italian Grill",
            category: "Main"
        ),
        Dish(
            name: "John Cole",
            image: "https://olo-images-live.imgix.net/63/63707c61cfb6400894e39f5c5a72f871.jpg?auto=format%2Ccompress&q=60&cs=tinysrgb&w=528&h=352&fit=fill&fm=png32&bg=transparent&s=7baed9ad47668a1b7259c554907fda05",
            price: 7.49,
            description: "Vanilla ice cream with caramel sauce and roasted cinnamon rum pecans",
            restaurant: "Carrabba’s Italian Grill",
            category: "Dessert"
        ),


        Dish(
            name: "Classic Margherita",
            image: "https://images-gmi-pmc.edge-generalmills.com/d35faf33-2f42-4dac-88d8-ba9d52d6e4bf.jpg",
            price: 15.99,
            description: "Fresh mozzarella, house-made tomato sauce, Pecorino Romano & fresh basil",
            restaurant: "Bertucci’s",
            category: "Main"
        ),
        Dish(
            name: "Roasted Wild Mushroom Pizza",
            image: "https://www.blossomtostem.net/wp-content/uploads/2019/03/Roasted-Mushroom-Pizza-12-720x720.jpg",
            price: 16.99,
            description: "FRoasted wild mushrooms, oregano, thyme, seasoned cream sauce, Pecorino Romano & mozzarella",
            restaurant: "Bertucci’s",
            category: "Main"
        ),
        Dish(
            name: "Chicken Parmesan",
            image: "https://a.mktgcdn.com/p/oMpkWjpxPyPQ4IBfp9zVXVzmRQ2Y32Td15xkw8u4h80/1200x800.jpg",
            price: 21.99,
            description: "Pomodoro, Pecorino Romano, mozzarella, fresh basil",
            restaurant: "Bertucci’s",
            category: "Main"
        ),


        Dish(
            name: "Soy Egg",
            image: "https://cdn.gadis.co.id/bucket-gadis-production/wysywig-contents/1597156171.png",
            price: 2.00,
            restaurant: "Tenya Japanese Eatery",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Japanese Curry Chicken Rice Bowl",
            image: "https://media-cdn.grubhub.com/image/upload/d_search:browse-images:default.jpg/w_115,q_auto:low,fl_lossy,dpr_2.0,c_fill,f_auto,h_123,g_auto/nxcuxnid6queyofsprfl",
            price: 12.00,
            description: "Tenya brined chicken tender, pickled red radish, sesame seed and Japanese slaw",
            restaurant: "Tenya Japanese Eatery",
            category: "Main"
        ),


        Dish(
            name: "Fried Chicken Egg Salad",
            image: "https://ichibanyausa.com/wp-content/uploads/2022/05/Fried-Chicken-Egg-Salad.jpg",
            price: 6.70,
            restaurant: "CoCo Ichibanya",
            category: "Main"
        ),
        Dish(
            name: "Chicken Cutlet",
            image: "https://ichibanyausa.com/wp-content/uploads/2022/05/Chicken-Cutlet.jpg",
            price: 11.00,
            restaurant: "CoCo Ichibanya",
            category: "Main"
        ),
        Dish(
            name: "Fried Chicken Omelet",
            image: "https://ichibanyausa.com/wp-content/uploads/2022/05/Fried-Chicken-1.jpg",
            price: 12.50,
            restaurant: "CoCo Ichibanya",
            category: "Main"
        ),


        Dish(
            name: "Tochin Classic Tokyo Tonkotsu Ramen",
            image: "https://uploads-ssl.webflow.com/5eb9f44f335cd359a5405ea5/5eb9f44f335cd323f4405efa_Tonchin_3_2019_1875_websize.jpg",
            price: 12.49,
            description: "Homemade noodles, tokyo tonkotsu pork broth, roasted chashu pork, egg, scallion, menma, seaweed",
            restaurant: "Tonchin",
            category: "Main"
        ),
        Dish(
            name: "Miso Ginger Ramen (Vegan)",
            image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2F1509571814%2Fmiso-ginger-noodle-bowls-1712p18.jpg%3Fitok%3DWgJkf3mk",
            price: 10.99,
            description: "Homemade vegan noodles, vegan miso broth, wakame, corn, soy meat, menma, spicy cabbage, sesame, scallion, chili pepper",
            restaurant: "Tonchin",
            category: "Main"
        ),


        Dish(
            name: "Tempura Appetizer",
            image: "https://img1.wsimg.com/isteam/ip/6e70ee99-c0d1-4374-bc41-c276b44a9cd0/CE74F67F-5FD2-4F24-A1B2-DECFB38D8358.jpeg/:/rs=w:720,h:540,cg:true,m/cr=w:720,h:540",
            price: 7.65,
            description: "2 shrimp and 6 vegetables dipped in batter and fried",
            restaurant: "Sushi Tama",
            category: "Appetizer"
        ),
        Dish(
            name: "Jyo",
            image: "https://img1.wsimg.com/isteam/ip/6e70ee99-c0d1-4374-bc41-c276b44a9cd0/0F1A9D8D-84C1-4388-B22A-85D3DAAD5910.jpeg/:/rs=w:720,h:540,cg:true,m/cr=w:720,h:540",
            price: 15.00,
            description: "8 pieces of assorted Nigiri, 3 pieces of Tuna Roll and Cucumber Roll, and 4 pieces of California Roll",
            restaurant: "Sushi Tama",
            category: "Main"
        ),


        Dish(
            name: "Ebi Dashimaki",
            image: "https://ootoya.us/wp-content/uploads/2021/06/menu-11.jpg",
            price: 5.65,
            description: "Japanese egg omelette contained dashi broth and minced shrimp",
            restaurant: "Ootoya",
            category: "Appetizer"
        ),
        Dish(
            name: "Salmon Saikyo Yaki",
            image: "https://ootoya.us/wp-content/uploads/2015/05/10_salmon.jpg",
            price: 14.90,
            description: "Grilled salmon marinated in a special Saikyo Miso",
            restaurant: "Ootoya",
            category: "Main"
        ),
        Dish(
            name: "Washu Beef Steak Ju",
            image: "https://ootoya.us/wp-content/uploads/2021/06/2M_-menu-75.jpg",
            price: 17.90,
            description: "Washu-beef top sirloin steak with an original sauce over rice",
            restaurant: "Ootoya",
            category: "Main"
        ),


        Dish(
            name: "IPPUDO Buns",
            image: "https://ippudo-us.com/wordpress/wp-content/themes/ippudo-theme/img/photo_01.png",
            price: 6.70,
            description: "Steamed buns with your choice of fillings",
            restaurant: "Ippudo",
            category: "Appetizer"
        ),
        Dish(
            name: "Shiromaru Classic",
            image: "https://ippudo-us.com/wordpress/wp-content/themes/ippudo-theme/images/menu/photo_shiromaru.png",
            price: 11.90,
            description: "The original “Tonkotsu” (pork) broth with Ippudo’s signature dashi, thin noodles topped with pork belly chashu, sesame kikurage mushrooms, menma, red pickled ginger and scallions",
            restaurant: "Ippudo",
            category: "Main"
        ),


        Dish(
            name: "Khao Soi",
            image: "https://inquiringchef.com/wp-content/uploads/2021/02/Khao-Soi-Noodles-square.jpg",
            price: 9.00,
            description: "Crispy duck served on a bed of egg noodles in a curry base sauce, garnished with sliced red onions, lime and pickled vegetables.",
            restaurant: "Lotus of Siam",
            category: "Main"
        ),
        Dish(
            name: "Garlic Prawns",
            image: "https://www.recipetineats.com/wp-content/uploads/2017/05/Garlic-Prawns_6.jpg",
            price: 12.00,
            description: "Deep fried prawns with shells (almost like potato chips), sautéed with our special garlic sauce, topped with ground black pepper",
            restaurant: "Lotus of Siam",
            category: "Main"
        ),


        Dish(
            name: "Satay Chicken",
            image: "https://rasamalaysia.com/wp-content/uploads/2019/04/chicken-satay-thumb.jpg",
            price: 9.95,
            description: "Chicken BBQ skewers served with peanut sauce and cucumber salad",
            restaurant: "Ruan Thai",
            category: "Appetizer"
        ),
        Dish(
            name: "Tom Yum",
            image: "https://hot-thai-kitchen.com/wp-content/uploads/2013/03/tom-yum-goong-blog.jpg",
            price: 6.95,
            description: "Lemon grass soup with galangal, kaffir lime leaves, mushroom, cilantro and spicy lime-juice",
            restaurant: "Ruan Thai",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Ped Pa Low",
            image: "https://www.eatingthaifood.com/wp-content/uploads/2014/07/zong-pet-paloe-%E0%B8%8B%E0%B9%89%E0%B8%87%E0%B9%80%E0%B8%9B%E0%B9%87%E0%B8%94%E0%B8%9E%E0%B8%B0%E0%B9%82%E0%B8%A5%E0%B9%89.jpg",
            price: 20.95,
            description: "Steamed duck with soy sauce and herbs",
            restaurant: "Ruan Thai",
            category: "Main"
        ),


        Dish(
            name: "Beef Skewer",
            image: "https://iwashyoudry.com/wp-content/uploads/2017/07/Thai-Beef-Skewers-3.jpg",
            price: 9.00,
            description: "Grilled thin slice beef bursting with asian bbq sauce",
            restaurant: "Sticky Rice",
            category: "SoupAndSide"
        ),
        Dish(
            name: "Pad Kee Mao (spicy fried noodles)",
            image: "https://www.stickyricede.com/wp-content/uploads/2022/05/DSC_2612-shrimp-noodles-45-angle.jpg",
            price: 12.00,
            description: "Drunken noodle, Stir-fried wide rice noodles with basil, red bell pepper, tossed in Thai spicy chili garlic sauce",
            restaurant: "Sticky Rice",
            category: "Main"
        ),
        Dish(
            name: "Sticky Rice with Mango",
            image: "https://www.stickyricede.com/wp-content/uploads/2022/05/DSC_2647-mango-and-sticky-rice-close-head-on.jpg",
            price: 7.00,
            description: "Stick Rice seasoned with coconut milk and sugar served with mango and coconut cream",
            restaurant: "Sticky Rice",
            category: "Dessert"
        )

    ]
}


