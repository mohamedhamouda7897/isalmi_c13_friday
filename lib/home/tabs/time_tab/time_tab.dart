import 'package:flutter/material.dart';
import 'package:islami_c13_friday/home/tabs/time_tab/azkar_grid.dart';
import 'package:islami_c13_friday/home/tabs/time_tab/pray_time.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
           const PrayTime(),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  'Azkar',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            const AzkarGrid()
          ],
        ),
      ),
    );
  }
}
