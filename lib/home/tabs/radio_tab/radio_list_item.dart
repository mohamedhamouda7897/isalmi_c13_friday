import 'package:flutter/material.dart';
import '../../../my_theme_data.dart';

class RadioListItem extends StatelessWidget {
  const RadioListItem({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
      height: 133,
      decoration: const BoxDecoration(
        color: MyThemeData.primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [Color(0x33202020), Color(0x30202020)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(bounds);
              },
              child: Image.asset('assets/images/mosque.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Radio Ibrahim Al-Akdar',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: MyThemeData.blackColor, fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage('assets/images/heart.png'),
                        color: MyThemeData.blackColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage('assets/images/play.png'),
                        color: MyThemeData.blackColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon:  const ImageIcon(
                        AssetImage('assets/images/volume.png'),
                        color: MyThemeData.blackColor,
                      ),
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
}
