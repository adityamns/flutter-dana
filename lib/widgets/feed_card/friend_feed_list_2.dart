import 'package:dana_clone/utils/dana_clone_theme.dart';
import 'package:dana_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FriendFeedList2 extends StatelessWidget {
  const FriendFeedList2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        const TileWithAnimation(
          iconName: 'friend_2',
        ),
        const Gap(),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'Your friend',
              style: textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),
              children: [
                TextSpan(
                  text: ' just recieve Pulsa Voucher',
                  style: textTheme.titleLarge,
                ),
                TextSpan(
                  text: ' from',
                  style: textTheme.titleLarge,
                ),
                TextSpan(
                  text: ' Dana surprize',
                  style: textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: DanaCloneTheme.orange,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
