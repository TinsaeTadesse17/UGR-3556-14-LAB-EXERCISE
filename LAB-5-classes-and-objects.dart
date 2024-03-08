import 'dart:math';

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  final double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  final Circle circle = Circle(5);
  final Square square = Square(4);

  final double circleArea = circle.calculateArea();
  final double squareArea = square.calculateArea();

  print("Circle Area: $circleArea");
  print("Square Area: $squareArea");
}
