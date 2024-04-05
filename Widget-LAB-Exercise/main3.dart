import 'package:flutter/material.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: Text('Order Details'),
        ),
        body: Container(
          color: Colors.grey[200],
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderStatus(),
              SizedBox(height: 16),
              OrderDetails(),
              SizedBox(height: 16),
              PurchasedItems(),
              SizedBox(height: 16),
              ShippingInformation(),
              SizedBox(height: 16),
              PaymentInformation(),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[200],
      padding: EdgeInsets.all(4),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green),
          SizedBox(width: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Completed', style: TextStyle(color: Colors.green)),
              Text(
                'Order Completed 24 July 2024',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Order ID'),
              Text('Order Date'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('6777'),
              Text('20 July 2024 5:00'),
            ],
          ),
        ],
      ),
    );
  }
}

class PurchasedItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Purchased Items',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          ItemRow(
              image: 'assets/blackhole.jpeg',
              name: 'Blue T-Shirt',
              size: 'L',
              price: '\$50'),
          SizedBox(height: 16),
          ItemRow(
              image: 'assets/blackhole.jpeg',
              name: 'Hoodie Rose',
              size: 'L',
              price: '\$50'),
        ],
      ),
    );
  }
}

class ItemRow extends StatelessWidget {
  final String image;
  final String name;
  final String size;
  final String price;

  ItemRow(
      {required this.image,
      required this.name,
      required this.size,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image, width: 100),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Size: $size'),
            Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}

class ShippingInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shipping Information',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          InfoRow(label: 'Name', value: 'Jacob Jones'),
          InfoRow(label: 'Phone Number', value: '223455'),
          InfoRow(label: 'Address', value: 'Addis Ababa'),
          InfoRow(label: 'Shipment', value: 'Economy'),
        ],
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(value),
      ],
    );
  }
}

class PaymentInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Information',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          InfoRow(label: 'Payment Method', value: 'Cash on Delivery'),
        ],
      ),
    );
  }
}
