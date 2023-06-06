import 'package:dana_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:dana_clone/utils/utils.dart';

class IconSubtittleHeader extends StatelessWidget {
  const IconSubtittleHeader({
    super.key,
    required this.iconName,
    required this.iconSubtittle,
  });

  final String iconName;
  final String iconSubtittle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetsLocation.iconLocation(iconName),
          width: 40,
        ),
        const Gap(h: 5),
        Text(
          iconSubtittle,
          style: Theme.of(context).primaryTextTheme.titleMedium,
        )
      ],
    );
  }
}
