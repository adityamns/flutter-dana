import 'package:dana_clone/utils/dana_clone_theme.dart';
import 'package:dana_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FriendFeedList3 extends StatelessWidget {
  const FriendFeedList3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        const TileWithAnimation(
          iconName: 'friend_3',
        ),
        const Gap(),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'Your friend',
              style: textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),
              children: [
                TextSpan(
                  text: ' just recieved',
                  style: textTheme.titleLarge,
                ),
                TextSpan(
                  text: ' Dana kaget',
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
