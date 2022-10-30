import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  final icon;
  final function;

  MyButton({this.icon, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: 50,
          height: 50,
          color: Colors.grey[100],
          child: Icon(icon),
        ),
      ),
    );
  }
}
