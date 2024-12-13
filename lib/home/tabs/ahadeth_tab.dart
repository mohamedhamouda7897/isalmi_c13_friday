import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c13_friday/hadeth_details/hadeth_details.dart';
import 'package:islami_c13_friday/model/hadeth_model.dart';
import 'package:islami_c13_friday/my_theme_data.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadethFile();

    return Column(
      children: [
        Expanded(
          child: CarouselSlider(
            options: CarouselOptions(
              height: double.infinity,
              autoPlay: true,

            ),
            items: ahadeth.map((hadeth) {
              return Builder(
                builder: (BuildContext context) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, HadethDetailsScreen.routeName,
                          arguments: hadeth);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Image.asset(
                            "assets/images/hadeth_bg.png",
                            width: double.infinity,
                            fit: BoxFit.fill,
                            height: double.infinity,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 24),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  hadeth.title,
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: MyThemeData.blackColor),
                                ),
                              ),
                              Directionality(
                                textDirection: TextDirection.rtl,
                                child: Padding(
                                  padding: const EdgeInsets.all(22.0),
                                  child: Text(
                                    hadeth.content.first,
                                    textAlign: TextAlign.center,
                                    maxLines: 11,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            color: MyThemeData.blackColor),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Expanded(
    //       child: ListView.separated(
    //         separatorBuilder: (context, index) => SizedBox(
    //           width: 16,
    //         ),
    //         scrollDirection: Axis.horizontal,
    //         itemBuilder: (context, index) {
    //           return Stack(
    //             alignment: Alignment.topCenter,
    //             children: [
    //               Image.asset(
    //                 "assets/images/hadeth_bg.png",
    //               ),
    //               Column(
    //                 children: [
    //                   Container(
    //                     margin: EdgeInsets.only(top: 24),
    //                     child: Text(
    //                       ahadeth[index].title,
    //                       style: Theme.of(context)
    //                           .textTheme
    //                           .bodyLarge!
    //                           .copyWith(color: MyThemeData.blackColor),
    //                     ),
    //                   ),
    //                   Text(
    //                     ahadeth[index].content.first,
    //                     style: Theme.of(context)
    //                         .textTheme
    //                         .bodySmall!
    //                         .copyWith(color: Colors.white),
    //                   )
    //                 ],
    //               )
    //             ],
    //           );
    //         },
    //         itemCount: ahadeth.length,
    //       ),
    //     )
    //   ],
    // );
  }

  loadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((file) {
      List<String> Ahadeth = file.split("#");
      for (String data in Ahadeth) {
        List<String> lines = data.trim().split("\n");
        String hadethTitle = lines[0];
        lines.removeAt(0);
        List<String> content = lines;
        HadethModel hadethModel =
            HadethModel(content: content, title: hadethTitle);
        ahadeth.add(hadethModel);
      }

      setState(() {});
    }).catchError((error) {
      print(error.toString());
    });
  }
}
