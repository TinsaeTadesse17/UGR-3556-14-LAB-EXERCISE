import 'dart:io';

void main() {
  print("Simple Calculator");
  print("Enter the first number:");

  double? num1;
  try {
    num1 = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  print("Enter the second number:");

  double? num2;
  try {
    num2 = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  print("Enter the operation (+, -, *, /):");
  String? operator = stdin.readLineSync();

  if (operator != '+' && operator != '-' && operator != '*' && operator != '/') {
    print("Invalid operator");
    return;
  }

  double result = 0;

  switch (operator) {
    case '+':
      result = num1! + num2!;
      break;
    case '-':
      result = num1! - num2!;
      break;
    case '*':
      result = num1! * num2!;
      break;
    case '/':
      if (num2 == 0) {
        print("Cannot divide by zero");
        return;
      }
      result = num1! / num2!;
      break;
  }

  print("Result: $result");
}
