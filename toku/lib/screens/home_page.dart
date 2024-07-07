import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/color_page.dart';
import 'package:toku/screens/family_member.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/prashes_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff3F2D27),
        title: const Text('Toku'),
      ),
      body: Column(children: [
        Category(
          text: 'Numbers',
          color: const Color(0xffF19130),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const NumberPage();
            }));
          },
        ),
        Category(
            text: 'Family Member',
            color: const Color(0xff528032),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyPage();
              }));
            }),
        Category(
          text: 'Color',
          color: const Color(0xff7D40A2),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ColorPage();
            }));
          },
        ),
        Category(
          text: 'Phrases',
          color: const Color(0xff47A5CB),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const PhrasesPage();
            }));
          },
        ),
      ]),
    );
  }
}
