import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phrases"),
        backgroundColor: const Color(0xff46322b),
      ),
      body: ListView(
        children: [
          familyPattern(
            audioPath: 'assets/sounds/phrases/are_you_coming.wav',
            textEnglish: 'are you coming.',
            textJapan: 'Kimasu ka.',
          ),
          familyPattern(
            audioPath: 'assets/sounds/phrases/dont_forget_to_subscribe.wav',
            textEnglish: 'dont forget to subscribe.',
            textJapan: 'Kōdoku suru koto o wasurenaide kudasai.',
          ),
          familyPattern(
            audioPath: 'assets/sounds/phrases/how_are_you_feeling.wav',
            textEnglish: 'how are you feeling.',
            textJapan: 'Go kibun wa ikagadesu ka.',
          ),
          familyPattern(
            audioPath: 'assets/sounds/phrases/i_love_anime.wav',
            textEnglish: 'i love anime.',
            textJapan: 'Watashi wa anime ga daisukidesu.',
          ),
          familyPattern(
            audioPath: 'assets/sounds/phrases/i_love_programming.wav',
            textEnglish: 'i love programming',
            textJapan: 'Watashi wa puroguramingu ga daisukidesu',
          ),
          familyPattern(
            audioPath: 'assets/sounds/phrases/programming_is_easy.wav',
            textEnglish: 'programming is easy',
            textJapan: 'Puroguramingu wa kantandesu',
          ),
          familyPattern(
            audioPath: 'assets/sounds/phrases/what_is_your_name.wav',
            textEnglish: 'what is your name.',
            textJapan: 'Namae wa nandesu ka.',
          ),
          familyPattern(
            audioPath: 'assets/sounds/phrases/where_are_you_going.wav',
            textEnglish: 'where are you going',
            textJapan: 'Doko ni iku no',
          ),
          familyPattern(
            audioPath: 'assets/sounds/phrases/yes_im_coming.wav',
            textEnglish: 'yes i am coming',
            textJapan: 'Hai watashi wa kite imasu',
          ),
        ],
      ),
    );
  }

  Container familyPattern({
    required String textJapan,
    required String textEnglish,
    required String audioPath,
  }) {
    return Container(
      height: 100,
      color: const Color(0xff50ADC7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
