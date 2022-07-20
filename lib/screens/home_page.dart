import 'package:flutter/material.dart';
import 'package:toku/screens/number_page.dart';
import 'package:toku/screens/phrases_page.dart';

import 'colors_page.dart';
import 'family_members.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text("toku"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          homePattern(
              text: "Nembers",
              color: const Color(0xffEF9235),
              context: context),
          homePattern(
              text: "Family Members",
              color: const Color(0xff558B37),
              context: context),
          homePattern(
              text: "Colors", color: const Color(0xff79359F), context: context),
          homePattern(
              text: "Phrases",
              color: const Color(0xff50ADC7),
              context: context),
        ],
      )),
    );
  }

  GestureDetector homePattern(
      {required String text,
      required Color color,
      required BuildContext context}) {
    return GestureDetector(
      onTap: () {
        if (text == "Nembers") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const NumberScreen()));
        } else if (text == "Family Members") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const FamilyMembers()));
        } else if (text == "Colors") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const ColorScreen()));
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const PhrasesScreen()));
        }
      },
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 24),
        height: 60,
        width: double.infinity,
        child: Text(text),
        color: color,
      ),
    );
  }
}
