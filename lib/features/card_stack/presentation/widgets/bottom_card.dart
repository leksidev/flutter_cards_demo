import 'package:flutter/material.dart';
import 'package:flutter_cards_demo/constants/colors_consts.dart';
import 'package:flutter_cards_demo/constants/sizes_consts.dart';
import 'package:flutter_cards_demo/features/card_stack/presentation/widgets/card_content.dart';
import 'package:flutter_cards_demo/features/card_stack/presentation/widgets/card_template.dart';

class BottomCard extends QuizCard {
  const BottomCard({super.key, required this.cardContent});

  final CardContent cardContent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          heightFactor: 1.04,
          child: Container(
            height: kHeightCard,
            width: kWidthCard * 0.96,
            decoration: BoxDecoration(
              color: kBackgroundCardColor,
              borderRadius: BorderRadius.circular(kBorderRadius),
              border: Border.all(color: kCardBorderColor, width: 1.0),
            ),
          ),
        ),
        Align(
          heightFactor: 1.02,
          alignment: Alignment.bottomCenter,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            height: kHeightCard,
            width: kWidthCard * 0.98,
            decoration: BoxDecoration(
              color: kBackgroundCardColor,
              borderRadius: BorderRadius.circular(kBorderRadius),
              border:
                  Border.all(color: kCardBorderColor, width: kCardBorderWidth),
            ),
            child: Center(
              child: Text(
                cardContent.cardText,
                style: const TextStyle(
                    fontSize: kCardFontSize, color: kCardTextColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
