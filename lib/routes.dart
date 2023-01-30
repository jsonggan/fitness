import 'package:provider/provider.dart';
import 'package:sassy_mobile/providers/auth_provider.dart';
import 'package:sassy_mobile/providers/event_provider.dart';
import 'package:sassy_mobile/providers/speakers_provider.dart';
import 'package:sassy_mobile/providers/sponsors_provider.dart';
import 'package:sassy_mobile/providers/user_provider.dart';
import 'package:sassy_mobile/screens/register/register.dart';
import 'package:sassy_mobile/screens/main_home/main_home.dart';
import 'package:sassy_mobile/screens/select_event/select_event.dart';
import 'package:sassy_mobile/screens/sign_in/sign_in.dart';
import 'package:flutter/widgets.dart';
import 'package:sassy_mobile/screens/verification_code/verification_code.dart';
import 'package:sassy_mobile/temp.dart';

final Map<String, WidgetBuilder> routes = {
  SignInPage.routeName: (context) {
    return SignInPage();
  },
  RegisterPage.routeName: (context) => RegisterPage(),
  VerificationCodePage.routeName: (context) => VerificationCodePage(),
  SelectEventPage.routeName: (context) => SelectEventPage(),
  MainHomePage.routeName: (context) => MainHomePage(),
  Temp.routeName: (context) => Temp(),
};
