import 'package:flutter/material.dart';

import 'package:dana_clone/utils/utils.dart';

class AddCardWidgetAnimation extends StatefulWidget {
  const AddCardWidgetAnimation({
    super.key,
  });

  @override
  State<AddCardWidgetAnimation> createState() => _AddCardWidgetAnimationState();
}

class _AddCardWidgetAnimationState extends State<AddCardWidgetAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _positionAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(milliseconds: 500), vsync: this);

    _positionAnimation = AlignmentTween(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );

    _controller.forward();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      }

      if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _positionAnimation,
      builder: (context, child) {
        return Stack(
          children: [
            Align(
              alignment: _positionAnimation.value,
              child: Image(
                image: AssetsLocation.iconLocation('card'),
                width: 27,
              ),
            ),
          ],
        );
      },
    );
  }
}
