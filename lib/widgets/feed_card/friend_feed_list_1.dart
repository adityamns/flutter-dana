import 'package:dana_clone/utils/dana_clone_theme.dart';
import 'package:dana_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FriendFeedList1 extends StatelessWidget {
  const FriendFeedList1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        const TileWithAnimation(
          iconName: 'friend_1',
        ),
        const Gap(),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'Your friend',
              style:
                  textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),
              children: [
                TextSpan(
                  text: ' just recieve',
                  style: textTheme.titleLarge,
                ),
                TextSpan(
                  text: ' Cashback',
                  style: textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: ' from',
                  style: textTheme.titleLarge,
                ),
                TextSpan(
                  text: ' Cashback',
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
