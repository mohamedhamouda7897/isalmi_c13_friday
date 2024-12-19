import 'package:flutter/material.dart';
import '../../../my_theme_data.dart';
import 'azkar_grid.dart';

class AzkarItem extends StatelessWidget {
  final int index;
  const AzkarItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: MyThemeData.blackColor,
          border: Border.all(color: const Color(0xffE2BE7F), width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            index % 2 == 0
                ? 'assets/images/azkar.png'
                : 'assets/images/azkar_1.png',
          ),
          const SizedBox(height: 10),
          Text(
            azkarTypes[index],
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: MyThemeData.whiteClr, fontSize: 20),
          )
        ],
      ),
    );
  }
}
