import 'package:flutter/material.dart';
import 'package:toku/components/phraseItem.dart';
import 'package:toku/models/model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> Phrases = const [
    ItemModel(
        jpName: 'Kimasu ka',
        enName: 'Are you coming',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemModel(
        jpName: 'Kōdoku suru koto o wasurenaide kudasa',
        enName: "Don't forget to subscribe",
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemModel(
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'How are you feeling',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemModel(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'I love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemModel(
        jpName: 'Puroguramingu ga daisukidesu',
        enName: 'I love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemModel(
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'programming is easy',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    ItemModel(
        jpName: 'Anata no namae wa nandesuka',
        enName: 'what is your name',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ItemModel(
        jpName: 'Doko ni iku no',
        enName: 'where are you going',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    ItemModel(
      jpName: 'Hai, ikimasu',
      enName: "Yes, I'm coming",
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Phrases'),
          backgroundColor: const Color(0xff3F2D27),
        ),
        body: ListView.builder(
            itemCount: Phrases.length,
            itemBuilder: (context, index) {
              return PhrasesItem(
                  color: const Color(0xff47A5CB), phrase: Phrases[index]);
            }));
  }
}
