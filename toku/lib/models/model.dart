// model
import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  // attributes
  final String? image;
  final String jpName;
  final String enName;
  final String sound;
  //constructor
  const ItemModel(
      {this.image,
      required this.jpName,
      required this.enName,
      required this.sound});
  // Methods 
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
