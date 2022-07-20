import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors"),
        backgroundColor: const Color(0xff46322b),
      ),
      body: ListView(children: [
        familyPattern(
            audioPath: 'assets/sounds/colors/black.wav',
            textEnglish: 'black',
            textJapan: 'Kuro',
            pathImage: 'assets/images/colors/color_black.png'),
        familyPattern(
            audioPath: 'assets/sounds/colors/brown.wav',
            textEnglish: 'brown',
            textJapan: 'Chairo',
            pathImage: 'assets/images/colors/color_brown.png'),
        familyPattern(
            audioPath: 'assets/sounds/colors/dusty_yellow.wav',
            textEnglish: 'dusty yellow',
            textJapan: 'Hokori ppoi kiiro',
            pathImage: 'assets/images/colors/color_dusty_yellow.png'),
        familyPattern(
            audioPath: 'assets/sounds/colors/gray.wav',
            textEnglish: 'gray',
            textJapan: 'Gurē',
            pathImage: 'assets/images/colors/color_gray.png'),
        familyPattern(
            audioPath: 'assets/sounds/colors/green.wav',
            textEnglish: 'green',
            textJapan: 'Midori',
            pathImage: 'assets/images/colors/color_green.png'),
        familyPattern(
            audioPath: 'assets/sounds/colors/red.wav',
            textEnglish: 'red',
            textJapan: 'Aka',
            pathImage: 'assets/images/colors/color_red.png'),
        familyPattern(
            audioPath: 'assets/sounds/colors/white.wav',
            textEnglish: 'white',
            textJapan: 'Shiroi',
            pathImage: 'assets/images/colors/color_white.png'),
        familyPattern(
            audioPath: 'assets/sounds/colors/yellow.wav',
            textEnglish: 'yellow',
            textJapan: 'Kiiro',
            pathImage: 'assets/images/colors/yellow.png'),
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
