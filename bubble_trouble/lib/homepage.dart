import "package:flutter/material.dart";
import "button.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double playerX = 0.5;

  void moveLeft();

  void moveRight();

  void fireMissile();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.pink[200],
            child: Center(
              child: Stack(
                children: [
                  Container(
                      alignment: Alignment(playerX, 1.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Colors.deepPurple,
                          height: 50,
                          width: 50,
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(icon: Icons.arrow_back),
                MyButton(icon: Icons.arrow_upward),
                MyButton(icon: Icons.arrow_forward),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
