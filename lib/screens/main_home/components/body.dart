import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:sassy_mobile/app_theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sassy_mobile/providers/auth_provider.dart';
import 'package:sassy_mobile/providers/event_provider.dart';
import 'package:sassy_mobile/providers/map_provider.dart';
import 'package:sassy_mobile/providers/sessions_provider.dart';
import 'package:sassy_mobile/providers/speakers_provider.dart';
import 'package:sassy_mobile/providers/sponsors_provider.dart';
import 'package:sassy_mobile/providers/user_provider.dart';
import 'package:sassy_mobile/screens/dashboard/components/body.dart';
import 'package:sassy_mobile/screens/dashboard/dashboard.dart';
import 'package:sassy_mobile/screens/exercise/components/body.dart';
import 'package:sassy_mobile/screens/more/components/body.dart';
import 'package:sassy_mobile/screens/sign_in/sign_in.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  MainHomeState createState() => MainHomeState();
}

class MainHomeState extends State<MainHome> {
  int currentIndex = 0;

  final screens = [
    Dashboard(),
    Exercise(),
    More(),
  ];

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        backgroundColor: backGroundColor,
        body: SafeArea(child: screens[currentIndex]),

        // backgroundColor: backGroundColor,
        bottomNavigationBar: bottomAppBar(),
      ),
    );
  }

  //control bottom app bar
  BottomNavigationBar bottomAppBar() {
    return BottomNavigationBar(
      onTap: (index) => setState(() {
        currentIndex = index;
      }),
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: bottomNavBarColor,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/home.svg'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/list.svg'),
          label: 'List',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/more.svg'),
          label: 'More',
        ),
      ],
    );
  }
}
