import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_c13_friday/home/tabs/time_tab/carousel_item.dart';
import '../../../model/pray_time.dart';

class CarouselDate extends StatelessWidget {
  const CarouselDate({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        options: CarouselOptions(
          height: 130,
          viewportFraction: .33,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          enlargeFactor: 0.2,
          onPageChanged: (index, onPageChanged) {
            print(index);
          },
          scrollDirection: Axis.horizontal,
        ),
        itemCount: PrayTime.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return CarouselItem(
            prayTime: PrayTime.getPrayTime(itemIndex),
          );
        });
  }
}
