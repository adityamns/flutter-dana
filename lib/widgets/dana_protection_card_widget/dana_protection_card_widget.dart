import 'package:dana_clone/utils/assets_locations.dart';
import 'package:dana_clone/utils/dana_clone_theme.dart';
import 'package:dana_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DanaProtectionCardWidget extends StatelessWidget {
  const DanaProtectionCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: DanaCloneTheme.grey.withOpacity(0.4),
          width: 0.3,
        ),
      ),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 12),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetsLocation.iconLocation("dana_protection"),
                      width: 40,
                    ),
                    const Gap(
                      h: 5,
                    ),
                    Text(
                      "DANA\nPROTECTION",
                      style: textTheme.displaySmall,
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('DISCOVER'),
                ),
              ],
            ),
            const Gap(
              v: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HorizontalCaptionAndIcon(
                  iconName: 'money_back',
                  caption: 'Money-back\nGuarantee',
                ),
                HorizontalCaptionAndIcon(
                  iconName: 'secure_data',
                  caption: 'Secure Data\nPrivacy',
                ),
                HorizontalCaptionAndIcon(
                  iconName: 'live_assistance',
                  caption: '24/7 Live\nAssistance',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
