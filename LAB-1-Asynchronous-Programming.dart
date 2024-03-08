import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  await Future.delayed(const Duration(seconds: 2));

  final List<String> quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Believe you can and you're halfway there. - Theodore Roosevelt",
    "You miss 100% of the shots you don't take. - Wayne Gretzky",
    "The best way to predict the future is to invent it. - Alan Kay",
    "The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt"
  ];

  final Random random = Random();
  final String quote = quotes[random.nextInt(quotes.length)];

  return quote;
}

void main() async {
  print("Fetching random quote...");

  final String quote = await fetchRandomQuote();

  print("Random Quote: $quote");
}
