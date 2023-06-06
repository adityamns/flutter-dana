import 'package:dana_clone/utils/assets_locations.dart';
import 'package:dana_clone/utils/dana_clone_theme.dart';
import 'package:dana_clone/widgets/gap.dart';
import 'package:flutter/material.dart';

class MoreForYouCardWidget extends StatelessWidget {
  const MoreForYouCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'More For You',
                      style: primaryTextTheme.headlineMedium,
                    ),
                    Text(
                      'want more good stuff? take a look!',
                      style: textTheme.bodyMedium,
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('VIEW ALL'),
                ),
              ],
            ),
            const Gap(
              v: 16,
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetsLocation.imageLocation('promo_voucher'),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: MediaQuery.of(context).size.width / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Promo Voucher",
                        style: textTheme.displayMedium,
                      ),
                      Text(
                        "Choose and Claim the most\nwanted DANA vouchers!",
                        style: textTheme.titleSmall!.copyWith(
                          color: DanaCloneTheme.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.2,
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  top: 0,
                  bottom: 0,
                  right: 15,
                  child: CircleAvatar(
                    backgroundColor: DanaCloneTheme.thirdBlue,
                    radius: 15,
                    child: Icon(
                      Icons.chevron_right_rounded,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
