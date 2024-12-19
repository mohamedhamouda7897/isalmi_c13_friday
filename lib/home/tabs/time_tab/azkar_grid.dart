import 'package:flutter/material.dart';
import 'azkar_item.dart';

class AzkarGrid extends StatelessWidget {
  const AzkarGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: GridView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: azkarTypes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 4 / 5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return AzkarItem(index: index);
          }),
    );
  }
}

List<String> azkarTypes = [
  'Evening Azkar',
  'Morning Azkar',
  'Waking Azkar',
  'Sleeping Azkar'
];
