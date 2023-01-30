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

class Exercise extends StatefulWidget {
  const Exercise({Key? key}) : super(key: key);

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
            left: horizontalPadding, right: horizontalPadding, top: 10),
        child: ListView(children: [
          Text('Exercise', style: Theme.of(context).textTheme.titleLarge),
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
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
              child: Center(
                child: Text('lat',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: textColorMain, fontSize: 20)),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Future<void> next() async {
    Navigator.pushReplacementNamed(context, VerificationCodePage.routeName);
  }
}
