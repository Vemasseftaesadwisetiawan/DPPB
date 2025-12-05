import 'package:flutter/material.dart';

// =========================================================================
// MODELS
// =========================================================================

/// Kelas Model untuk Produk (PBO: Encapsulation)
class Product {
  final String name;
  final double price;
  final String imagePath;
  final String description;

  const Product(
    this.name,
    this.price,
    this.imagePath, {
    this.description = 'A rich, strong, and intense coffee experience.',
  });
}

/// Model untuk Item di Keranjang
class CartItem {
  final Product product;
  int quantity;
  final String options;
  double get total => product.price * quantity;

  CartItem(
    this.product,
    this.quantity, {
    this.options = 'Reg Size, Whole Milk',
  });
}

/// Model untuk Komentar
class Comment {
  final String user;
  final String initial;
  final double rating;
  final String comment;
  final String time;

  const Comment(this.user, this.initial, this.rating, this.comment, this.time);
}

/// Model untuk Status Pesanan
class OrderStatus {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool isCompleted;

  const OrderStatus(this.title, this.subtitle, this.icon, this.isCompleted);
}

// =========================================================================
// MOCK DATA
// =========================================================================

/// Menu Products
final List<Product> menuProducts = [
  const Product('Classic Espresso', 3.50, 'espresso.jpg'),
  const Product(
    'Creamy Cappuccino',
    4.25,
    'cappuccino.jpg',
    description:
        'A rich shot of espresso "stained" with a dollop of steamed milk foam. Strong and intense, yet incredibly smooth, offering a bold coffee experience with a creamy finish.',
  ),
  const Product('Vanilla Latte', 4.75, 'vanilla_latte.jpg'),
  const Product('Iced Caramel Macchiato', 5.50, 'iced_caramel.jpg'),
  const Product('Matcha Green Tea Latte', 5.00, 'matcha.jpg'),
  const Product('Blueberry Muffin', 3.00, 'muffin.jpg'),
  const Product('Americano', 3.00, 'americano.jpg'),
  const Product('Hot Chocolate', 4.00, 'hot_chocolate.jpg'),
];

/// Home Screen Products
const List<Product> mockProducts = [
  Product('Classic Espresso', 3.50, 'espresso.jpg'),
  Product('Creamy Latte', 4.20, 'latte.jpg'),
  Product('Rich Cappuccino', 4.00, 'cappuccino.jpg'),
  Product('Chocolate Mocha', 4.80, 'mocha.jpg'),
  Product('Bold Americano', 3.80, 'americano.jpg'),
  Product('Iced Caramel Frappe', 5.50, 'frappe.jpg'),
];

/// Home Screen Categories
const List<Map<String, dynamic>> mockCategories = [
  {'name': 'Coffee', 'icon': Icons.coffee, 'isSelected': true},
  {'name': 'Non-Coffee', 'icon': Icons.local_drink, 'isSelected': false},
  {'name': 'Meh', 'icon': Icons.tag_faces, 'isSelected': false},
  {'name': 'S...', 'icon': Icons.cloud, 'isSelected': false},
];

/// Menu Filter Categories
const List<Map<String, dynamic>> filterCategories = [
  {'name': 'All Coffees', 'icon': Icons.coffee, 'isSelected': true},
  {'name': 'Espresso', 'icon': Icons.local_cafe, 'isSelected': false},
  {'name': 'Latte', 'icon': Icons.local_drink, 'isSelected': false},
  {'name': 'Iced', 'icon': Icons.icecream, 'isSelected': false},
];

/// Cart Items
final List<CartItem> mockCartItems = [
  CartItem(const Product('Classic Caffe Latte', 5.50, 'latte.jpg'), 1),
  CartItem(
    const Product('Iced Caramel Macchiato', 6.25, 'iced_caramel.jpg'),
    2,
  ),
  CartItem(const Product('Avocado & Egg Sandwich', 7.00, 'sandwich.jpg'), 1),
];

/// Product Comments
final List<Comment> mockCommentsList = [
  const Comment(
    'Alex Johnson',
    'A',
    5.0,
    'Absolutely loved the spicy ramen! The broth was rich and flavorful, and the noodles had a perfect chew. Highly recommend for anyone who enjoys a good kick!',
    '2 hours ago',
  ),
  const Comment(
    'Sarah M.',
    'S',
    4.5,
    'The truffle pasta was divine! Every bite was heavenly. A bit pricey but totally worth it for a special occasion. Great ambiance too.',
    'Yesterday',
  ),
  const Comment(
    'Emily Chen',
    'E',
    4.0,
    'Tried the new vegan burger. It was surprisingly juicy and packed with flavor. A fantastic option for non-meat eaters!',
    '2 days ago',
  ),
  const Comment(
    'David Lee',
    'D',
    5.0,
    'Great service and delicious appetizers. The calamari was perfectly crispy. Will definitely be coming back!',
    '3 days ago',
  ),
  const Comment(
    'Jessica W.',
    'J',
    4.5,
    'The chocolate lava cake was simply amazing. Rich, gooey, and the perfect end to our meal.',
    '1 week ago',
  ),
];

/// Order Tracking Steps
final List<OrderStatus> mockOrderSteps = [
  const OrderStatus(
    'Processing Order',
    'Order received and being prepared.',
    Icons.hourglass_empty,
    true,
  ),
  const OrderStatus(
    'Brewing Coffee',
    'Your delicious coffee is being freshly brewed.',
    Icons.coffee,
    true,
  ),
  const OrderStatus(
    'Ready for Pickup',
    'Your order is ready at the counter!',
    Icons.check_circle_outline,
    false,
  ),
];
