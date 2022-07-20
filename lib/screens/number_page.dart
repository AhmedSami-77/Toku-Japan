import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Numbers"),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView(
          children: [
            membersPattern(
                pathImage: 'assets/images/numbers/number_one.png',
                textJapan: "ichi",
                textEnglish: "one"),
            membersPattern(
                pathImage: 'assets/images/numbers/number_two.png',
                textJapan: "Ni",
                textEnglish: "two"),
            membersPattern(
                pathImage: 'assets/images/numbers/number_three.png',
                textJapan: "San",
                textEnglish: "three"),
            membersPattern(
                pathImage: 'assets/images/numbers/number_four.png',
                textJapan: "Shi",
                textEnglish: "four"),
            membersPattern(
                pathImage: 'assets/images/numbers/number_five.png',
                textJapan: "Go",
                textEnglish: "five"),
            membersPattern(
                pathImage: 'assets/images/numbers/number_six.png',
                textJapan: "Roku",
                textEnglish: "six"),
            membersPattern(
                pathImage: 'assets/images/numbers/number_seven.png',
                textJapan: "ichi",
                textEnglish: "seven"),
            membersPattern(
                pathImage: 'assets/images/numbers/number_eight.png',
                textJapan: "hachi",
                textEnglish: "eight"),
            membersPattern(
                pathImage: 'assets/images/numbers/number_nine.png',
                textJapan: "Kyū",
                textEnglish: "nine"),
            membersPattern(
                pathImage: 'assets/images/numbers/number_ten.png',
                textJapan: "Jū",
                textEnglish: "ten"),
          ],
        ),
      ),
    );
  }

  Container membersPattern({
    required String pathImage,
    required String textJapan,
    required String textEnglish,
  }) {
    return Container(
      height: 100,
      color: const Color(0xffEF9235),
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
                if (textEnglish == 'one') {
                  assetsAudioPlayer.open(
                    Audio("assets/sounds/numbers/number_one_sound.mp3"),
                  );
                } else if (textEnglish == 'two') {
                  assetsAudioPlayer.open(
                    Audio("assets/sounds/numbers/number_two_sound.mp3"),
                  );
                } else if (textEnglish == 'three') {
                  assetsAudioPlayer.open(
                    Audio("assets/sounds/numbers/number_three_sound.mp3"),
                  );
                } else if (textEnglish == 'four') {
                  assetsAudioPlayer.open(
                    Audio("assets/sounds/numbers/number_four_sound.mp3"),
                  );
                } else if (textEnglish == 'five') {
                  assetsAudioPlayer.open(
                    Audio("assets/sounds/numbers/number_five_sound.mp3"),
                  );
                } else if (textEnglish == 'six') {
                  assetsAudioPlayer.open(
                    Audio("assets/sounds/numbers/number_six_sound.mp3"),
                  );
                } else if (textEnglish == 'seven') {
                  assetsAudioPlayer.open(
                    Audio("assets/sounds/numbers/number_seven_sound.mp3"),
                  );
                } else if (textEnglish == 'eight') {
                  assetsAudioPlayer.open(
                    Audio("assets/sounds/numbers/number_eight_sound.mp3"),
                  );
                } else if (textEnglish == 'nine') {
                  assetsAudioPlayer.open(
                    Audio("assets/sounds/numbers/number_nine_sound.mp3"),
                  );
                } else if (textEnglish == 'ten') {
                  assetsAudioPlayer.open(
                    Audio("assets/sounds/numbers/number_ten_sound.mp3"),
                  );
                }
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
