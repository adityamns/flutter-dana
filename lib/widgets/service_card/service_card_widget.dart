import 'package:dana_clone/utils/utils.dart';
import 'package:dana_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ServiceCardWidget extends StatelessWidget {
  const ServiceCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    final TextTheme = Theme.of(context).textTheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: DanaCloneTheme.grey.withOpacity(0.4),
          width: 0.3,
        ),
      ),
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 35, 16, 15),
            child: Row(
              children: [
                Image(
                  image: AssetsLocation.iconLocation('coupon'),
                  width: 40,
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dana Deals',
                      style: primaryTextTheme.headlineMedium,
                    ),
                    Text(
                      'Jajan Hemat s/d 43%',
                      style: TextTheme.titleMedium,
                    ),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'SERBU',
                      style: primaryTextTheme.labelLarge,
                    ))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22, bottom: 12, right: 22),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    ServiceCardIcon(
                      iconName: 'electricity',
                      iconSubtittle: 'Electricity',
                    ),
                    ServiceCardIcon(
                      iconName: 'rewards',
                      iconSubtittle: 'Voucher A+ Rewards',
                    ),
                    ServiceCardIcon(
                      iconName: 'emas',
                      iconSubtittle: 'eMas',
                    ),
                    ServiceCardIcon(
                      iconName: 'goals',
                      iconSubtittle: 'DANA Goals',
                    ),
                  ],
                ),
                Gap(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    ServiceCardIcon(
                      iconName: 'item_digital',
                      iconSubtittle: 'Item Digital',
                      iconSize: 25,
                    ),
                    ServiceCardIcon(
                      iconName: 'pulsa',
                      iconSubtittle: 'Pulsa & Data',
                      iconSize: 22,
                    ),
                    ServiceCardIcon(
                      iconName: 'dana_kaget',
                      iconSubtittle: 'DANA Kaget',
                      iconSize: 25,
                    ),
                    ServiceCardIcon(
                      iconName: 'view_all',
                      iconSubtittle: 'View All',
                      iconSize: 30,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
