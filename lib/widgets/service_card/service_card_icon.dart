import 'package:dana_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:dana_clone/utils/utils.dart';

class ServiceCardIcon extends StatelessWidget {
  const ServiceCardIcon({
    super.key,
    required this.iconName,
    required this.iconSubtittle,
    this.iconSize = 40,
  });

  final String iconName;
  final String iconSubtittle;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Column(
        children: [
          Image(
            image: AssetsLocation.iconLocation(iconName),
            width: iconSize,
          ),
          const Gap(
            v: 12,
          ),
          Text(
            iconSubtittle,
            style: TextTheme.titleSmall,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
