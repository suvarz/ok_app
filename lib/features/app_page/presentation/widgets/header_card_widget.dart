import 'package:flutter/material.dart';
import 'package:ok_app/features/app_page/domain/entities/header_card_entity.dart';

class HeaderCardWidget extends StatelessWidget {
  static const double height = 150;
  final HeaderCardEntity headerCard;

  const HeaderCardWidget({super.key, required this.headerCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.red,
      child: Center(child: Text(headerCard.title)),
    );
  }
}
