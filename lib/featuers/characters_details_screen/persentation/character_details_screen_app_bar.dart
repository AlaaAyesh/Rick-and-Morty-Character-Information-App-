import 'package:flutter/material.dart';

import '../../../core/constance/color.dart';
import '../../../data/models/characters.dart';

class CharacterDetailsScreenAppBar extends StatelessWidget {
  const CharacterDetailsScreenAppBar({
    super.key,
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme: const IconThemeData(color: MyColors.umber,),
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.lightSalmon,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          character.name ?? '',
          style: const TextStyle(color: MyColors.umber,fontWeight: FontWeight.bold),
        ),
        background: Hero(
          tag: character.id!,
          child: Image.network(
            character.image ?? "",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
