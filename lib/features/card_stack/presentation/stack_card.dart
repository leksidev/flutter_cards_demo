import 'package:flutter/material.dart';
import 'package:flutter_cards_demo/features/card_stack/presentation/widgets/card_template.dart';

const initialCardHeight = 500.0;
const initialCardWidth = 350.0;

class AllCardsWidget extends StatelessWidget {
  const AllCardsWidget({super.key, required this.cards});

  final List<QuizCard> cards;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ...cards,
          ],
        ),
      ],
    );
  }
}
