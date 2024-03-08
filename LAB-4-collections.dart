import 'dart:core';

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}

class CartItem {
  final Product product;
  int quantity;

  CartItem(this.product, this.quantity);
}

void main() {
  final List<CartItem> cart = [];

  addToCart(cart, Product('Apple', 0.5), 2);
  addToCart(cart, Product('Banana', 0.3), 3);
  addToCart(cart, Product('Orange', 0.4), 4);

  print('Shopping Cart:');
  printCart(cart);

  final double totalPrice = calculateTotalPrice(cart);
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');

  removeFromCart(cart, Product('Banana', 0.3));

  print('Updated Shopping Cart:');
  printCart(cart);

  final updatedTotalPrice = calculateTotalPrice(cart);
  print('Updated Total Price: \$${updatedTotalPrice.toStringAsFixed(2)}');
}

void addToCart(List<CartItem> cart, Product product, int quantity) {
  final existingItem = cart.firstWhere((item) => item.product.name == product.name, orElse: () => null);

  if (existingItem != null) {
    existingItem.quantity += quantity;
  } else {
    cart.add(CartItem(product, quantity));
  }
}

void removeFromCart(List<CartItem> cart, Product product) {
  cart.removeWhere((item) => item.product.name == product.name);
}

double calculateTotalPrice(List<CartItem> cart) {
  double total = 0.0;

  for (var item in cart) {
    total += item.product.price * item.quantity;
  }

  return total;
}

void printCart(List<CartItem> cart) {
  for (var item in cart) {
    print('${item.product.name} - Quantity: ${item.quantity} - Price: \$${(item.product.price * item.quantity).toStringAsFixed(2)}');
  }
}
