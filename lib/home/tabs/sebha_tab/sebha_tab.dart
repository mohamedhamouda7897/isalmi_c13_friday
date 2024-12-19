import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعْلَى',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 36, color: Colors.white),
          ),
          const SizedBox(height: 10),
          InkWell(
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              sebha();
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/sebha_1.png')),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Text(
                      azkar[index],
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 36, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      count.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 36, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void sebha() {
    if (count == 33) {
      tasbeeh();
      count = 1;
    } else {
      count++;
    }
    setState(() {});
  }

  void tasbeeh() {
    index++;
    if (index > azkar.length - 1) {
      index = 0;
    }
  }

  List<String> azkar = ["سبحان الله", "الحمد لله", "الله اكبر"];
}
