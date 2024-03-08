class Product {
  final String name;
  final double price;
  final int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  // Create a product object
  final Product product1 = Product("Apple", 0.5, 10);

  // Calculate total cost
  final double totalCost = product1.calculateTotalCost();

  // Print information about the product
  print("Product 1:");
  print("Name: ${product1.name}");
  print("Price: \$${product1.price}");
  print("Quantity: ${product1.quantity}");
  print("Total Cost: \$${totalCost}");
}
