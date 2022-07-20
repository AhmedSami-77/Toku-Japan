import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Members"),
        backgroundColor: const Color(0xff46322b),
      ),
      body: ListView(children: [
        familyPattern(
          pathImage: 'assets/images/family_members/family_father.png',
          textJapan: 'Chichioya',
          textEnglish: 'father',
          audioPath: 'assets/sounds/family_members/father.wav',
        ),
        familyPattern(
          pathImage: 'assets/images/family_members/family_daughter.png',
          textJapan: 'Musume',
          textEnglish: 'daughter',
          audioPath: 'assets/sounds/family_members/daughter.wav',
        ),
        familyPattern(
          pathImage: 'assets/images/family_members/family_grandfather.png',
          textJapan: 'Ojīsan',
          textEnglish: 'grandfather',
          audioPath: 'assets/sounds/family_members/grand_father.wav',
        ),
        familyPattern(
          pathImage: 'assets/images/family_members/family_grandmother.png',
          textJapan: 'Sobo',
          textEnglish: 'grandmother',
          audioPath: 'assets/sounds/family_members/grand_mother.wav',
        ),
        familyPattern(
          pathImage: 'assets/images/family_members/family_mother.png',
          textJapan: 'Hahaoya',
          textEnglish: 'mother',
          audioPath: 'assets/sounds/family_members/mother.wav',
        ),
        familyPattern(
          pathImage: 'assets/images/family_members/family_older_brother.png',
          textJapan: 'Nīsan',
          textEnglish: 'older brother',
          audioPath: 'assets/sounds/family_members/older bother.wav',
        ),
        familyPattern(
          pathImage: 'assets/images/family_members/family_older_sister.png',
          textJapan: 'Onēsan',
          textEnglish: 'older sister',
          audioPath: 'assets/sounds/family_members/older sister.wav',
        ),
        familyPattern(
          pathImage: 'assets/images/family_members/family_son.png',
          textJapan: 'Musuko',
          textEnglish: 'son',
          audioPath: 'assets/sounds/family_members/son.wav',
        ),
        familyPattern(
          pathImage: 'assets/images/family_members/family_younger_brother.png',
          textJapan: 'Otōto',
          textEnglish: 'younger brother',
          audioPath: 'assets/sounds/family_members/younger brohter.wav',
        ),
        familyPattern(
          pathImage: 'assets/images/family_members/family_younger_sister.png',
          textJapan: 'Imōto',
          textEnglish: 'younger sister',
          audioPath: 'assets/sounds/family_members/younger sister.wav',
        ),
      ]),
    );
  }

  Container familyPattern({
    required String pathImage,
    required String textJapan,
    required String textEnglish,
    required String audioPath,
  }) {
    return Container(
      height: 100,
      color: const Color(0xff558B37),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(pathImage),
            color: const Color(0xffFFF6DC),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(textJapan),
                Text(textEnglish),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            padding: const EdgeInsets.only(right: 16.0),
            onPressed: () {
              try {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(Audio(audioPath));
              } catch (error) {
                print(error);
              }
            },
            icon: const Icon(
              Icons.arrow_right,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
