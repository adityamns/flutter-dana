import 'package:dana_clone/utils/assets_locations.dart';
import 'package:dana_clone/utils/dana_clone_theme.dart';
import 'package:dana_clone/widgets/gap.dart';
import 'package:flutter/material.dart';

class NearByCardWidget extends StatelessWidget {
  const NearByCardWidget({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nearby',
              style: primaryTextTheme.headlineMedium,
            ),
            Text(
              'Find DANA merchants in your area!',
              style: textTheme.bodyMedium,
            ),
            const Gap(),
            Container(
              padding: EdgeInsets.fromLTRB(40, 40, 40, 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: DanaCloneTheme.grey.withOpacity(0.5),
                  width: 0.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Please allows location \nso you can use the \nNearBy feature.',
                        style: textTheme.headlineSmall,
                      ),
                      const Gap(),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("ALLOW"),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 40),
                        ),
                      ),
                    ],
                  ),
                  Image(
                    image: AssetsLocation.iconLocation('nearby'),
                    width: 60,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
