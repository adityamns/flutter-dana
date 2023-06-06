import 'package:flutter/material.dart';

import 'package:dana_clone/utils/utils.dart';
import 'package:dana_clone/widgets/widgets.dart';

class AppBarTittleWidget extends StatelessWidget {
  const AppBarTittleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;

    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          Image(
            image: AssetsLocation.iconLocation('logo'),
            width: 28,
          ),
          const Gap(
            h: 8,
          ),
          Text(
            'Rp',
            style: primaryTextTheme.bodySmall,
          ),
          const Gap(
            h: 8,
          ),
          Text(
            '0',
            style: primaryTextTheme.headlineSmall,
          ),
          const Gap(),
          const SizedBox(height: 30, child: AddCardWidgetAnimation()),
        ],
      ),
    );
  }
}
