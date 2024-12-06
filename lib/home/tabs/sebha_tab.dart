import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sebha tab",
            style: TextStyle(fontSize: 30, color: Colors.white),
          )
        ],
      ),
    );
  }
}
