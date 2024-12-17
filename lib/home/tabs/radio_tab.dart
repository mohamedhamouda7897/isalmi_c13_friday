import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Radio tab",
            style: TextStyle(fontSize: 30,
            color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}
