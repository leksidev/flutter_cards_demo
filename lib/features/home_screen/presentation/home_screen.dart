import 'package:flutter/material.dart';
import 'package:flutter_cards_demo/constants/colors_consts.dart';

import 'package:flutter_cards_demo/features/card_stack/presentation/widgets/bottom_card.dart';
import 'package:flutter_cards_demo/features/card_stack/presentation/stack_card.dart';
import 'package:flutter_cards_demo/features/card_stack/presentation/widgets/card_content.dart';
import 'package:flutter_cards_demo/features/card_stack/presentation/widgets/top_card.dart';
import 'package:flutter_cards_demo/features/home_screen/presentation/widgets/bottom_buttons_panel.dart';
import 'package:flutter_cards_demo/features/home_screen/presentation/widgets/main_appbar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppbar(),
      backgroundColor: kBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 14,
            child: AllCardsWidget(
              cards: [
                BottomCard(
                  cardContent: CardContent(
                    cardText: 'Second Card',
                  ),
                ),
                TopCard(
                  cardContent: CardContent(
                    cardText: 'First Card',
                  ),
                ),
              ],
            ),
          ),
          BottomButtonsPanel(),
        ],
      ),
    );
  }
}
