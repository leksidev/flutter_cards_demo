import 'package:flutter/material.dart';
import 'package:flutter_cards_demo/constants/colors_consts.dart';
import 'package:flutter_cards_demo/constants/sizes_consts.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget(
      {super.key, required this.onPressed, required this.iconData});
  final VoidCallback onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
          color: kIconButtonColor,
          borderRadius: BorderRadius.circular(kSizeActionButton),
          border: Border.all(color: kIconButtonColor)),
      child: InkWell(
        onTap: onPressed,
        splashColor: kAccentColor,
        borderRadius: BorderRadius.circular(kSizeActionButton),
        child: Container(
          padding: const EdgeInsets.all(kIconButtonPadding),
          child: Icon(
            iconData,
            color: kIconButtonTextColor,
            size: kSizeIconActionButton,
          ),
        ),
      ),
    );
  }
}

// color: kIconButtonColor,
