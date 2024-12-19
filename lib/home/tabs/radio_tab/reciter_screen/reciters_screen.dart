import 'package:flutter/material.dart';
import 'package:islami_c13_friday/home/tabs/radio_tab/radio_list_item.dart';

class RecitersScreen extends StatelessWidget {
  const RecitersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ListView.separated(
          padding: const EdgeInsets.all(0),
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: 5,
          itemBuilder: (context, index) {
            return const RadioListItem();
          }),
    );
  }
}
