# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


# User.create(name: Faker::Games::Overwatch.hero, username: Faker::Color.color_name, email: Faker::SlackEmoji.nature, password: Faker::SlackEmoji.objects_and_symbols, bio: Faker::Movies::StarWars.quote)

Product.create(name: "Almond Croissants", price: 30.95, quantity: 5, rating: 5, description: "Any classic French breakfast must include a croissant. Serve them with jam, maybe even a little cheese. But, for a genuinely sweet way to start the day make it an almond croissant. This almond croissant recipe is the classic version of the breakfast pastry with a sweet almond filling or frangipane swirled throughout the dough and topped with toasted almonds baked right into the top.", ingredients: "yeast, milk, sugar, butter, salt, almonds, egg", image: "https://www.halfbakedharvest.com/wp-content/uploads/2017/07/Mixed-Berry-Almond-Croissants-1.jpg")

Product.create(name: "Macarons (Variety Pack)", price: 24.99, quantity: 12, rating: 5, description: "Ladurée, Pierre Hermé, Lenôtre, Dalloyau, Gérard Mulot... whisper just one of these magical names to any sweet tooth in the know and you will see eyes light up, lips twitch into a smile and the word macaron will roll gently off of the tongue, escape on a sigh. Delicate, tender and sweet, the French macaron is formed of the perfect union of a feminine froth of white meringue gently, lovingly folded into snowy powdered sugar and fine almond meal, then barely scented with whatever you choose, whatever your mood, whatever your desire. Piped out into beautiful shiny mounds, silky smooth, to puff up in the warmth of the oven and transform into perfectly domed, crisp yet tender shells, nutty and sweet. Light as air, each ethereal shell is paired with another and sandwiched around a smooth, luxurious ganache, cream or jam filling allowing for an imaginative pairing of flavors, colors, textures.", ingredients: "sugar, almonds, salt, eggs, vanilla, cream, butter", image: "https://images.unsplash.com/photo-1569864358642-9d1684040f43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")

Product.create(name: "Creme Brulee Boba Milk Tea", price: 12.99, quantity: 2, rating: 4, description: "Iced tea with tapioca pearls that are sucked from a large straw are perhaps Taiwan’s most famous culinary export. These bouncy, chewy balls are fun to munch on, much like chewing gum. The teas may be milky or not, sweetened or not, and flavored with any number of additional powders or infusions, like mango. My favorite style is this classic black tea with milk, sweetened, and creme brulee added.", ingredients:"milk, sugar, tea, tapioca pearls, cream", image: "https://images.unsplash.com/photo-1525803377221-4f6ccdaa5133?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1053&q=80")

Product.create(name: "Chocolate Chip Cookies", price: 15.00, quantity: 10, rating: 3, description: "These super soft and chewy chocolate chip cookies are the most popular cookie recipe from our kitchen. Melted butter, more brown sugar than white sugar, and an extra egg yolk guarantee the chewiest chocolate chip cookie texture. Big chocolate chunks promise chocolate in every single bite. The flavor and texture of these cookies is unparalleled by any other recipe.", ingredients: "eggs, sugar, butter, chocolate, baking powder, salt, cornstarch, vanilla", image: "https://joyfoodsunshine.com/wp-content/uploads/2016/01/best-chocolate-chip-cookies-recipe-ever-no-chilling-1-e1549147195343.jpg")

Product.create(name: "Floral Vanilla Cupcakes", price: 30.95, quantity: 5, rating: 4, description: "Flower cupcakes in the form of carnations, camellias and hydrangeas really set the mood for spring. Lovely for bridal showers or many other occasions!", ingredients: "milk, sugar, butter, vanilla, salt, cream, egg, baking powder, flour", image: "https://images.unsplash.com/photo-1521309918586-feb7aa79a61b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")

Product.create(name: "Yuzu Meringue Tarts", price: 25.50, quantity: 10, rating: 5, description: "A buttery and crisp pastry crust filled with luscious yuzu custard topped with fluffy meringue.", ingredients: "sugar, salt, eggs, vanilla, cream, butter, gelatin, nuts", image: "https://images.unsplash.com/photo-1581016328250-0dd2cec2b756?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80")

Product.create(name: "The Best Chocolate Cake", price: 21.00, quantity: 1, rating: 5, description: "The best chocolate cake. Ever? There are plenty of claims for the best chocolate cake. I get that. But with one bite of this decadent, moist chocolate cake with chocolate frosting, every single person around the table commented that this was the best chocolate cake they’d ever tasted.", ingredients:"flour, sugar, coca powder, baking powder, baking soda, cream, chocolate, salt, milk, espresso powder, eggs, vanilla", image: "https://images.unsplash.com/photo-1540337706094-da10342c93d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80")

Product.create(name: "Lemon Glazed Donuts", price: 15.25, quantity: 10, rating: 3, description: "Fluffy, moist, melt-in-your-mouth donuts with a tangy lemon glaze. The perfect yeasted doughnut has been freshly fried, its brioche crumb offering the gentlest chew. It is completely coated with a glaze that is just set, and flecked with lemon zest.", ingredients: "eggs, sugar, yeast, flour, lemon, vanilla", image: "https://images.unsplash.com/photo-1514517220017-8ce97a34a7b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")



# person = User.all.sample
# thing = Product.all.sample

# first_order = Order.create(active: true, shipped: false, quantity: 1, user_id: person.id)

# OrderItem.create(quantity: 1, price: 5.00, order_id: first_order.id, product_id: thing.id)

