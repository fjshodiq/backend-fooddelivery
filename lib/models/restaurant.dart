import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juice beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/burger1.JPEG",
      price: 8.99,
      category: FoodCategory.burgers,
      avaibleAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),
    Food(
      name: " BBQ Bacon Burger",
      description:
          "Smoky BBQ sauce, cripy bacon, and onion rigs make this beef burger a savory delight.",
      imagePath: "lib/images/burgers/burger2.jpeg",
      price: 10.00,
      category: FoodCategory.burgers,
      avaibleAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juice beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/....png",
      price: 8.99,
      category: FoodCategory.burgers,
      avaibleAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juice beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/....png",
      price: 8.99,
      category: FoodCategory.burgers,
      avaibleAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "This burger is a blue cheese lover's dream. It features a succulent ground beef patty,",
      imagePath: "lib/images/burgers/....png",
      price: 9.49,
      category: FoodCategory.burgers,
      avaibleAddons: [
        Addon(name: "Sauted Mushrooms", price: 0.99),
        Addon(name: "Fried Egg", price: 1.49),
        Addon(name: "Spicy Mayo", price: 0.99),
      ],
    ),
    // salads
    Food(
      name: "Caesar Salad",
      description:
          "Cripy romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/salads1.jpeg",
      price: 7.99,
      category: FoodCategory.salads,
      avaibleAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Cripy romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/salads2.jpeg",
      price: 7.99,
      category: FoodCategory.salads,
      avaibleAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Cripy romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/....png",
      price: 7.99,
      category: FoodCategory.salads,
      avaibleAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Cripy romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/....png",
      price: 7.99,
      category: FoodCategory.salads,
      avaibleAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Cripy romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/....png",
      price: 7.99,
      category: FoodCategory.salads,
      avaibleAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),

    // sides
    Food(
      name: "Sweet Potato Fries",
      description: "Cripy sweet potato fries with a touch of salt.",
      imagePath: "lib/images/sides/sushi1.jpeg",
      price: 4.99,
      category: FoodCategory.sides,
      avaibleAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "truffle Oil", price: 1.49),
        Addon(name: "Cajun Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "CGolden and Crispy onion rings, perfect for dipping.",
      imagePath: "lib/images/sides/sushi2.jpeg",
      price: 3.99,
      category: FoodCategory.sides,
      avaibleAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Mayo", price: 1.49),
        Addon(name: "PArmesan Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "CGolden and Crispy onion rings, perfect for dipping.",
      imagePath: "lib/images/sides/....png",
      price: 3.99,
      category: FoodCategory.sides,
      avaibleAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Mayo", price: 1.49),
        Addon(name: "PArmesan Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "CGolden and Crispy onion rings, perfect for dipping.",
      imagePath: "lib/images/sides/....png",
      price: 3.99,
      category: FoodCategory.sides,
      avaibleAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Mayo", price: 1.49),
        Addon(name: "PArmesan Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "CGolden and Crispy onion rings, perfect for dipping.",
      imagePath: "lib/images/sides/....png",
      price: 3.99,
      category: FoodCategory.sides,
      avaibleAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Mayo", price: 1.49),
        Addon(name: "PArmesan Parmesan", price: 1.99),
      ],
    ),

    // desserts
    Food(
      name: "Chocolate Brownies",
      description:
          "Rich and fudgy chocolate brownie, with chunks of chocolate.",
      imagePath: "lib/images/desserts/rb.jpeg",
      price: 5.99,
      category: FoodCategory.dessert,
      avaibleAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Chocolate Brownies",
      description:
          "Rich and fudgy chocolate brownie, with chunks of chocolate.",
      imagePath: "lib/images/desserts/eskrim.jpeg",
      price: 8.99,
      category: FoodCategory.dessert,
      avaibleAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Chocolate Brownies",
      description:
          "Rich and fudgy chocolate brownie, with chunks of chocolate.",
      imagePath: "lib/images/desserts/....png",
      price: 5.99,
      category: FoodCategory.dessert,
      avaibleAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Chocolate Brownies",
      description:
          "Rich and fudgy chocolate brownie, with chunks of chocolate.",
      imagePath: "lib/images/desserts/....png",
      price: 5.99,
      category: FoodCategory.dessert,
      avaibleAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Chocolate Brownies",
      description:
          "Rich and fudgy chocolate brownie, with chunks of chocolate.",
      imagePath: "lib/images/desserts/....png",
      price: 5.99,
      category: FoodCategory.dessert,
      avaibleAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),

    // drinks
    Food(
      name: "Teh",
      description: "Teh yang diisi dengan es.",
      imagePath: "lib/images/drinks/esteh.jpeg",
      price: 5.99,
      category: FoodCategory.drinks,
      avaibleAddons: [
        Addon(name: "Es Teh", price: 0.99),
        Addon(name: "Teh Anget", price: 1.49),
        Addon(name: "Es/Teh Tawar", price: 1.99),
      ],
    ),
    Food(
      name: "Es Sirup",
      description: "Sirup yang diisi dengan es.",
      imagePath: "lib/images/drinks/sirup.jpeg",
      price: 5.99,
      category: FoodCategory.drinks,
      avaibleAddons: [
        Addon(name: "Es Teh", price: 0.99),
        Addon(name: "Teh Anget", price: 1.49),
        Addon(name: "Es/Teh Tawar", price: 1.99),
      ],
    ),
    Food(
      name: "Teh",
      description: "Teh yang diisi dengan es.",
      imagePath: "lib/images/drinks/....png",
      price: 5.99,
      category: FoodCategory.drinks,
      avaibleAddons: [
        Addon(name: "Es Teh", price: 0.99),
        Addon(name: "Teh Anget", price: 1.49),
        Addon(name: "Es/Teh Tawar", price: 1.99),
      ],
    ),
    Food(
      name: "Teh",
      description: "Teh yang diisi dengan es.",
      imagePath: "lib/images/drinks/....png",
      price: 5.99,
      category: FoodCategory.drinks,
      avaibleAddons: [
        Addon(name: "Es Teh", price: 0.99),
        Addon(name: "Teh Anget", price: 1.49),
        Addon(name: "Es/Teh Tawar", price: 1.99),
      ],
    ),
    Food(
      name: "Teh",
      description: "Teh yang diisi dengan es.",
      imagePath: "lib/images/drinks/....png",
      price: 5.99,
      category: FoodCategory.drinks,
      avaibleAddons: [
        Addon(name: "Es Teh", price: 0.99),
        Addon(name: "Teh Anget", price: 1.49),
        Addon(name: "Es/Teh Tawar", price: 1.99),
      ],
    ),
  ];

  /*

  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*

  O P E R A T I O N S

  */

  // use cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists, increate it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of item in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

  H E L P E R S 
  */

  // genaret a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)} ");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
        .writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
     receipt.writeln();
    }

    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
