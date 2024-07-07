import 'package:flutter/material.dart';
import 'package:toku/models/model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.phrase, required this.color});
  final ItemModel phrase;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                phrase.jpName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                phrase.enName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 2.0),
          child: IconButton(
              onPressed: () {
                phrase.playSound();
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 24,
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
