import 'package:flutter/material.dart';
import 'package:toku/components/itemInfo.dart';
import 'package:toku/models/model.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.color, required this.phrase});
  final Color color;
  final ItemModel phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: ItemInfo(phrase: phrase, color: color),
    );
  }
}