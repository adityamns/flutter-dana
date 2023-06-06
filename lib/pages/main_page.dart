import 'package:dana_clone/provider/bottom_navigation_provider.dart';
import 'package:dana_clone/utils/list_of_pages.dart';
import 'package:dana_clone/widgets/buttom_nav/custom_buttom_navbar.dart';
import 'package:dana_clone/utils/dana_clone_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DanaCloneTheme.whiteBg,
      // appBar: AppBar(
      //   systemOverlayStyle: const SystemUiOverlayStyle(
      //     statusBarColor: Colors.transparent,
      //   ),
      //   toolbarHeight: kToolbarHeight + 1,
      //   elevation: 0,
      //   titleSpacing: 0,
      //   title: AppBarTittleWidget(),
      //   actions: [
      //     Image(
      //       image: AssetsLocation.iconLocation('message'),
      //       width: 35,
      //     ),
      //     const Gap(
      //       h: 16,
      //     ),
      //   ],
      // ),
      body: Consumer<BottomNavigationProvider>(
        builder: (context, provider, child) {
          return ListOfPages.pages[provider.selectedIndex];
        },
      ),
      bottomNavigationBar: const SizedBox(
        height: 95,
        child: CustomBottomNavBar(),
      ),
    );
  }
}
