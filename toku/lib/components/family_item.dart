import 'package:flutter/material.dart';
import 'package:toku/models/model.dart';

class FamilyItem extends StatelessWidget {
  const FamilyItem({super.key, required this.family});
  final ItemModel family;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: const Color(0xff538733),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFEF6DB),
            child: Image.asset(family.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  family.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  family.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {
                  family.sound;
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 26,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
