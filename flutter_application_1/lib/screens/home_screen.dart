import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/category_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yemek Kategorileri'),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoryScreen('Ana Yemekler')),
              );
            },
            child: Container(
              color: Colors.yellow,
              height: 200,
              child: Center(
                child: Text(
                  'Ana Yemekler',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoryScreen('Çorbalar')),
              );
            },
            child: Container(
              color: Colors.green,
              height: 200,
              child: Center(
                child: Text(
                  'Çorbalar',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoryScreen('Tatlılar')),
              );
            },
            child: Container(
              color: Colors.orange,
              height: 200,
              child: Center(
                child: Text(
                  'Tatlılar',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoryScreen('İçecekler')),
              );
            },
            child: Container(
              color: Colors.blue,
              height: 200,
              child: Center(
                child: Text(
                  'İçecekler',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
