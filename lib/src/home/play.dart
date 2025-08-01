import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:wordly/src/game.dart';

class Play extends StatefulWidget {
  const Play({super.key});

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        20,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 19, 12, 28),
        border: BoxBorder.all(
          color: Color.fromARGB(255, 25, 60, 184),
          width: 1.5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: math.min(80, MediaQuery.of(context).size.width / 7),
            height: math.min(80, MediaQuery.of(context).size.width / 7),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 22, 34, 84),
              borderRadius: BorderRadius.circular(
                100,
              ),
            ),
            child: Center(
              child: Icon(
                MingCute.play_line,
                color: Color.fromARGB(255, 80, 162, 255),
                size: math.min(60, MediaQuery.of(context).size.width / 8),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Ready To Play?",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Guess a random 5-letter word in 6 tries",
            style: TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 89, 183, 241),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          IntrinsicWidth(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 20, 71, 230),
                borderRadius: BorderRadius.circular(
                  5,
                ),
              ),
              height: 40,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) {
                        return Game();
                      },
                    ),
                  );
                },
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      MingCute.play_line,
                      color: Color.fromARGB(255, 196, 209, 249),
                    ),
                    Text(
                      "Start Game",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
