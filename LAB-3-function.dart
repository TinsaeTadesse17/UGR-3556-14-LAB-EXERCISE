void main() {
  final String originalString = "Hello, World!";
  final String reversedString = reverseString(originalString);

  print("Original string: $originalString");
  print("Reversed string: $reversedString");
}

String reverseString(String input) {
  final List<String> characters = input.split('');
  final String reversed = characters.reversed.join('');
  return reversed;
}
