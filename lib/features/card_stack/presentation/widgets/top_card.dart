import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_cards_demo/card_providers.dart';
import 'package:flutter_cards_demo/constants/colors_consts.dart';
import 'package:flutter_cards_demo/constants/sizes_consts.dart';
import 'package:flutter_cards_demo/features/card_stack/presentation/widgets/card_content.dart';
import 'package:flutter_cards_demo/features/card_stack/presentation/widgets/card_template.dart';

class TopCard extends QuizCard {
  const TopCard({super.key, required this.cardContent});

  final CardContent cardContent;

  @override
  Widget build(BuildContext context) {
    RotationProvider rotationProvider = Provider.of<RotationProvider>(context);
    DxProvider dxProvider = Provider.of<DxProvider>(context);
    DyProvider dyProvider = Provider.of<DyProvider>(context);
    double rotation = rotationProvider.rotation;
    double offsetX = dxProvider.dx;
    double offsetY = dyProvider.dy;

    double screenWidth = MediaQuery.of(context).size.width;

    bool isOutOfRange = false;
    bool isSwipedRight = false;

    if (dxProvider.dx.abs() > screenWidth / 2.5) {
      isOutOfRange = true;
      isSwipedRight = dxProvider.dx > 0;
    } else {
      isOutOfRange = false;
    }

    return Positioned(
      child: GestureDetector(
        onPanUpdate: (details) {
          // Вычисляем направление свайпа
          double dx = details.delta.dx * 3;
          double dy = details.delta.dy * 2;
          if (!isOutOfRange) {
            dxProvider.updateRotation(offsetX + dx);
            dyProvider.updateRotation(offsetY + dy);
            // Определяем угол наклона в зависимости от смещения
            double newRotation = (offsetX / 400).clamp(-1.0, 1.0);

            // Обновляем состояние для анимации наклона контейнера
            rotationProvider.updateRotation(newRotation);
          }
        },
        onPanEnd: (_) {
          // При завершении свайпа сбрасываем наклон контейнера
          rotationProvider.updateRotation(0.0);
          dyProvider.updateRotation(0.0);
          dxProvider.updateRotation(0.0);
        },
        child: Transform(
          transform: Matrix4.identity()
            ..rotateZ(
              rotation * (3.14 / 4),
            ) // Поворот в радианах
            ..translate(offsetX, offsetY), // Смещение по горизонтали
          alignment: FractionalOffset.center,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  height: kHeightCard,
                  width: kWidthCard,
                  decoration: BoxDecoration(
                    color: kBackgroundCardColor,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      width: 2.0,
                      color: isOutOfRange
                          ? isSwipedRight
                              ? kAccentColor
                              : kAccentColor2
                          : kCardBorderColor,
                    ),
                  ),
                  child: ClipRRect(
                    child: Center(
                      child: Text(
                        cardContent.cardText,
                        style: TextStyle(
                          fontSize: kCardFontSize,
                          fontWeight: FontWeight.bold,
                          color: isOutOfRange
                              ? isSwipedRight
                                  ? kAccentColor
                                  : kAccentColor2
                              : kCardTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
