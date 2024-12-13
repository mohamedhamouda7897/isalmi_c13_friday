import 'package:flutter/material.dart';
import 'package:islami_c13_friday/model/hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "hadethDetails";

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/images/details_bg.png",
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              SizedBox(
                height: 90,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      height: 8,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            // border: Border.all(
                            //   color: Theme.of(context).primaryColor,
                            // ),
                          ),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text.rich(
                                textAlign: TextAlign.center,
                                TextSpan(children: [
                                  TextSpan(
                                    text: "${model.content[index]}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ])),
                          ));
                    },
                    itemCount: model.content.length,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
