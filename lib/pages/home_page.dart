import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:dana_clone/utils/utils.dart';
import 'package:dana_clone/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DanaCloneTheme.whiteBg,
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        elevation: 0,
        titleSpacing: 0,
        title: const AppBarTittleWidget(),
        actions: [
          Image(
            image: AssetsLocation.iconLocation('message'),
            width: 35,
          ),
          const Gap(h: 16),
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: DanaCloneTheme.whiteBg,
            height: 380,
            child: Stack(
              children: [
                Container(
                  height: 180,
                  color: DanaCloneTheme.mainBlue,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeaderWidget(),
                    ServiceCardWidget(),
                  ],
                )
              ],
            ),
          ),
          const FeedCardWidget(),
          const ImageLoopSliderWidget(),
          const WhatsNewCardWidget(),
          const NearByCardWidget(),
          const MoreForYouCardWidget(),
          const DanaProtectionCardWidget(),
        ],
      ),
    );
  }
}
