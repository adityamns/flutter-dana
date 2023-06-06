import 'package:dana_clone/utils/assets_locations.dart';
import 'package:dana_clone/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HorizontalCaptionAndIcon extends StatelessWidget {
  const HorizontalCaptionAndIcon({
    super.key,
    required this.iconName,
    required this.caption,
  });

  final String iconName;
  final String caption;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Image(
          image: AssetsLocation.iconLocation(iconName),
          width: 25,
        ),
        const Gap(
          h: 7,
        ),
        Text(
          caption,
          style: textTheme.bodySmall,
        )
      ],
    );
  }
}
