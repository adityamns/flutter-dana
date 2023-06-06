import 'package:dana_clone/utils/assets_locations.dart';
import 'package:dana_clone/widgets/gap.dart';
import 'package:flutter/material.dart';

class TileWhatsNew extends StatelessWidget {
  const TileWhatsNew({
    super.key,
    required this.iconName,
    required this.headLine,
    required this.textBody,
  });

  final String iconName;
  final String headLine;
  final String textBody;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(left: 35, bottom: 25, right: 20),
      child: Row(
        children: [
          Image(
            image: AssetsLocation.iconLocation(iconName),
            width: 32,
          ),
          const Gap(
            h: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headLine,
                style: textTheme.headlineSmall,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                textBody,
                style: textTheme.bodyLarge,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          )
        ],
      ),
    );
  }
}
