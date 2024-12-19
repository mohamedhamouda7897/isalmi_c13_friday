import 'package:flutter/material.dart';
import '../../../my_theme_data.dart';
import 'carousel_date.dart';

class PrayTime extends StatelessWidget {
  const PrayTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: 310,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          image: DecorationImage(
              image: AssetImage('assets/images/azkar_lightbg.png'),
              fit: BoxFit.fill),
          color: MyThemeData.brownClr),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 52,
              child: Text(
                '16 Jul,2024',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 16),
              ),
            ),
            Text(
              'Pray Time',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: MyThemeData.blackTransparent,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            SizedBox(
              width: 62,
              child: Text(
                '09 Muh,1446',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: MyThemeData.whiteClr, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        Text(
          'Tuesday',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: const Color(0xe6202020),
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 10,
        ),
        const CarouselDate(),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Next Pray - ',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: MyThemeData.blackTransparent),
                  ),
                  TextSpan(
                    text: '02:32',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: MyThemeData.blackColor),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 50),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/images/mute.png'),
                color: MyThemeData.blackColor,
              ),
            )
          ],
        ),
      ]),
    );
  }
}
