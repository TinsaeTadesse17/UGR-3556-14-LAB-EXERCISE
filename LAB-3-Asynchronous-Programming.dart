import 'dart:async';

class Database {
  static Future<List<String>> fetchData() async {
    await Future.delayed(Duration(seconds: 2));

    List<String> data = ['John', 'Jane', 'Alice', 'Bob'];

    return data;
  }
}

void main() {
  print('Loading data...');

  Database.fetchData().then((data) {
    print('Data loaded: $data');
  });

  print('Program execution continues...');
}
