
import 'package:flutter/material.dart';
import 'package:toku/components/itemInfo.dart';
import 'package:toku/models/model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFEF6DB), child: Image.asset(item.image!)),
          Expanded(child: ItemInfo(phrase: item, color: color)),
        ],
      ),
    );
  }
}

// flutter => cross platform (run on all ).


