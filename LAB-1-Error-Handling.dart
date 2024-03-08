import 'dart:io';

void main() {
  stdout.write('Enter a number: ');

  try {
    String? userInput = stdin.readLineSync();

    int number = int.parse(userInput!);

    print('The number is: $number');
  } catch (e) {
    if (e is FormatException) {
      print('Invalid input. Please enter a valid number.');
    } else {
      print('An error occurred: $e');
    }
  }
}
