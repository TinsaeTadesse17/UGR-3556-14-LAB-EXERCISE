import 'package:flutter/material.dart';

void main() => runApp(TestApp());

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  final String selectedSize = 'XS';
  final String selectedColor = 'Red';

  @override
  Widget build(BuildContext context) {
    final List<String> sizes = ['XS', 'S', 'M', 'L', 'XL', 'XXL'];
    final List<String> colors = ['Red', 'Green', 'Blue', 'Black'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'assets/blackhole.jpeg',
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BARDI Smart Light Bulb',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'RGBWW 12W LED WIFI',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '\$8.6',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow[600], size: 20),
                      SizedBox(width: 4.0),
                      Text(
                        '5.0 (354)',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Size',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Wrap(
                    spacing: 8.0,
                    children: sizes.map((size) {
                      return ChoiceChip(
                        label: Text(size),
                        selected: selectedSize == size,
                        onSelected: (selected) {},
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(
                          color: selectedSize == size
                              ? Colors.white
                              : Colors.black,
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Color',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Wrap(
                    spacing: 8.0,
                    children: colors.map((color) {
                      return ChoiceChip(
                        label: Text(color),
                        selected: selectedColor == color,
                        onSelected: (selected) {},
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(
                          color: selectedColor == color
                              ? Colors.white
                              : Colors.black,
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
