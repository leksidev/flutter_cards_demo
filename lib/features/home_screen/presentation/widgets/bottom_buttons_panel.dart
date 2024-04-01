import 'package:flutter/material.dart';
import 'package:flutter_cards_demo/features/home_screen/presentation/widgets/action_button.dart';

class BottomButtonsPanel extends StatelessWidget {
  const BottomButtonsPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          ActionButtonWidget(
            onPressed: () {},
            iconData: Icons.thumb_down_alt_outlined,
          ),
          ActionButtonWidget(onPressed: () {}, iconData: Icons.star_border),
          ActionButtonWidget(
            onPressed: () {},
            iconData: Icons.thumb_up_alt_outlined,
          ),
        ],
      ),
    );
  }
}
