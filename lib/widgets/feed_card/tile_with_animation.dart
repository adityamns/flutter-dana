import 'package:dana_clone/utils/assets_locations.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class TileWithAnimation extends StatelessWidget {
  const TileWithAnimation({
    super.key,
    required this.iconName,
  });

  final String iconName;

  @override
  Widget build(BuildContext context) {
    return LoopAnimationBuilder(
      builder: (context, value, child) {
        return Container(
          height: 38,
          width: 38,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: value,
          ),
          child: child,
        );
      },
      tween: ColorTween(
        begin: Colors.transparent,
        end: Colors.redAccent,
      ),
      duration: const Duration(
        seconds: 3,
      ),
      curve: Curves.easeInOutQuint,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Image(
          image: AssetsLocation.iconLocation(iconName),
        ),
      ),
    );
  }
}
