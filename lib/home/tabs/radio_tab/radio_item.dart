import 'package:flutter/material.dart';
import 'package:islami_c13_friday/home/tabs/radio_tab/radio_container.dart';


class RadioItem extends StatelessWidget {
  const RadioItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          RadioContainer(),
          RadioContainer(),
          RadioContainer(),
          RadioContainer(),
        ],
      ),
    );
  }
}
