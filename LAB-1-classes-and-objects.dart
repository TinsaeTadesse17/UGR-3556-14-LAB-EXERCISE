import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  await Future.delayed(const Duration(seconds: 2));

  final quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill",
    "Your time is limited, don't waste it living someone else's life. - Steve Jobs",
    "In the end, it's not the years in your life that count. It's the life in your years. - Abraham Lincoln",
    "Life is what happens when you're busy making other plans. - John Lennon"
  ];

  final random = Random();
  return quotes[random.nextInt(quotes.length)];
}

void main() async {
  print("Fetching random quote...");
  final quote = await fetchRandomQuote();
  print("Random Quote: $quote");
}
