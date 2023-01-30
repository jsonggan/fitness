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
import 'package:sassy_mobile/widgets/text_input_field.dart';

class SignInEmail extends StatefulWidget {
  const SignInEmail({Key? key}) : super(key: key);

  @override
  State<SignInEmail> createState() => _SignInEmailState();
}

class _SignInEmailState extends State<SignInEmail> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  bool _isPress = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 8),
              Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Image.asset('assets/images/dumbell.png'))),
              const Spacer(flex: 10),
              TextInputField(
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !EmailValidator.validate(value)) {
                    return 'Invalid email';
                  }
                  return null;
                },
                type: 'Email',
                controller: emailController,
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RegisterPage.routeName);
                },
                child: Text('Create an account',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: textColorGrey,
                        decoration: TextDecoration.underline)),
              ),
              const Spacer(flex: 1),
              CustomButton(
                color: yellowCardColor,
                text: "Next",
                press: () {
                  next();
                },
              ),
              const Spacer(
                flex: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> next() async {
    Navigator.pushReplacementNamed(context, VerificationCodePage.routeName);
  }
}
