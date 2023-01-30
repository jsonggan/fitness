import 'package:flutter/material.dart';
import 'package:sassy_mobile/app_theme.dart';
import 'package:sassy_mobile/widgets/custom_appbar.dart';
import 'components/body.dart';

class MorePage extends StatelessWidget {
  static String routeName = '/select_event_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: CustomTopAppBar(),
      body: Container(
        child: More(),
      ),
    );
  }
}
