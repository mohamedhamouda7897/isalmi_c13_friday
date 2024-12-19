import 'package:flutter/material.dart';
import '../../../model/pray_time.dart';

class CarouselItem extends StatelessWidget {
  final PrayTime prayTime;
  const CarouselItem({super.key, required this.prayTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff202020),
            Color(0xffB19768),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              prayTime.prayName,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 10),
            Text(prayTime.prayTime,
                style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(height: 10),
            Text(
              'PM',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
