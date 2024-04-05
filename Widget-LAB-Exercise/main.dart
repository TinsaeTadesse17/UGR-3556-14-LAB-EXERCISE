import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: _buildAppBarTitle(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileRow(),
              SizedBox(height: 20),
              _buildStatusContainer(),
              SizedBox(height: 10),
              _buildInfoTable(),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildAppBarTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.help),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'IJ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              TextSpan(
                text: 'Tracker',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
            ),
            _buildNotificationBadge(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ],
    );
  }

  Container _buildNotificationBadge() {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        '8',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Row _buildProfileRow() {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/blackhole.jpeg'),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '+1234567890',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.directions_car),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Log out',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }

  Container _buildStatusContainer() {
    return Container(
      height: 50,
      color: Colors.blue,
      padding: EdgeInsets.all(8),
      child: Center(
        child: Text(
          'Online | Battery 90%',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Table _buildInfoTable() {
    return Table(
      defaultColumnWidth: FlexColumnWidth(0.3),
      children: List.generate(6, (index) {
        return TableRow(
          children: List.generate(3, (index) {
            return _buildTableCell(
                Icons.thumb_up, '1975 Porsche 911', 'Carrera');
          }),
        );
      }),
    );
  }

  TableCell _buildTableCell(IconData icon, String text1, String text2) {
    return TableCell(
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(icon),
              onPressed: () {},
            ),
            SizedBox(height: 8),
            Text(
              text1,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 4),
            Text(
              text2,
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
