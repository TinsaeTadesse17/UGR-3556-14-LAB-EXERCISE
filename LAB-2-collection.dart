import 'dart:math';

void main() {
  final List<int> randomNumbers = generateRandomNumbers(20);

  final Set<int> uniqueNumbers = Set<int>.from(randomNumbers);

  print('Unique numbers:');
  uniqueNumbers.forEach((number) => print(number));
}

List<int> generateRandomNumbers(int count) {
  final Random random = Random();
  final List<int> numbers = [];

  for (int i = 0; i < count; i++) {
    numbers.add(random.nextInt(100));
  }

  return numbers;
}
