import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sassy_mobile/app_theme.dart';
import 'package:sassy_mobile/providers/auth_provider.dart';
import 'package:sassy_mobile/screens/register/register.dart';
import 'package:sassy_mobile/screens/verification_code/verification_code.dart';
import 'package:sassy_mobile/widgets/custom_button.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sassy_mobile/widgets/custom_card.dart';
import 'package:sassy_mobile/widgets/text_input_field.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
            left: horizontalPadding, right: horizontalPadding, top: 10),
        child: ListView(children: [
          Text('Dashboard', style: Theme.of(context).textTheme.titleLarge),
          SizedBox(
            height: 16,
          ),
          Card(
            shadowColor: Colors.transparent,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text('DAY 1',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: textColorMain)),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Card(
            shadowColor: Colors.transparent,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text('DAY 2',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: textColorMain)),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Card(
            shadowColor: Colors.transparent,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text('DAY 3',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: textColorMain)),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Card(
            shadowColor: Colors.transparent,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text('DAY 4',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: textColorMain)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
              child: Container(
                  width: MediaQuery.of(context).size.width / 1,
                  child: Image.asset('assets/images/human.jpg'))),
        ]),
      ),
    );
  }

  Future<void> next() async {
    Navigator.pushReplacementNamed(context, VerificationCodePage.routeName);
  }
}
