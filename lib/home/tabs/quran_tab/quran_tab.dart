import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c13_friday/home/tabs/quran_tab/sura_name_item.dart';
import 'package:islami_c13_friday/home/tabs/quran_tab/sura_name_item_horizontal.dart';
import 'package:islami_c13_friday/model/sura_model.dart';
import 'package:islami_c13_friday/sura_details/sura_details.dart';

class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  @override
  void initState() {
    super.initState();
    searchController.addListener(onSearch);
  }

  var searchController = TextEditingController();

  onSearch() {
    SuraModel.searchResult.clear();
    String text = searchController.text;
    if (text.isNotEmpty) {
      for (String data in SuraModel.suraNamesEn) {
        if (data.toLowerCase().contains(text.toLowerCase())) {
          SuraModel.searchResult.add(data);
        }
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _searchItem(),
          if (SuraModel.searchResult.isEmpty &&
              searchController.text.isEmpty) ...[_suraNamesHorizontalList()],
          _suraNamesVerticalList(),
        ],
      ),
    );
  }

  Widget _suraNamesVerticalList() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Suras List",
            style: GoogleFonts.elMessiri(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => const Divider(
                color: Colors.white,
                endIndent: 40,
                indent: 40,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SuraDetailsScreen.routeName,
                        arguments: SuraModel.getSuraModel(index));
                  },
                  child: SuraNameItem(
                    model: searchController.text.isNotEmpty
                        ? SuraModel.getSelectedSuraModel(index)
                        : SuraModel.getSuraModel(index),
                  ),
                );
              },
              itemCount: searchController.text.isNotEmpty
                  ? SuraModel.searchResult.length
                  : SuraModel.length,
            ),
          )
        ],
      ),
    );
  }

  Widget _suraNamesHorizontalList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Most Recently",
          style: GoogleFonts.elMessiri(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 150,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SuraNameItemHorizontal(
                model: SuraModel.getSuraModel(index),
              );
            },
            itemCount: SuraModel.length,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget _searchItem() {
    return Column(
      children: [
        TextField(
          controller: searchController,
          cursorWidth: 3,
          cursorColor: const Color(0xFFE2BE7F),
          style: GoogleFonts.elMessiri(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          decoration: InputDecoration(
            labelText: "Sura Name",
            labelStyle: GoogleFonts.elMessiri(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            prefixIcon: const ImageIcon(
              AssetImage("assets/images/quran.png"),
              color: Color(0xFFE2BE7F),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFFE2BE7F), width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFFE2BE7F), width: 2),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
