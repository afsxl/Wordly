import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:wordly/src/home/play.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            Text(
              "Wordly",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              "Guess the 5-letter word",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.chart_square_outline,
            ),
          ),
          SizedBox(
            width: 3,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.setting_2_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 5,
        ),
        child: Column(
          children: [
            Play(),
          ],
        ),
      ),
    );
  }
}
