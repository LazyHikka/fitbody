import 'package:fitbody/features/auth_page.dart';
import 'package:fitbody/features/fitbody_login/fitbody_login.dart';
import 'package:fitbody/features/fitbody_reg/fitbody_reg.dart';
import 'package:fitbody/features/forget_pas/forget_pas.dart';
import 'package:fitbody/features/home_screen.dart';

final routes = {
  '/': (context) => AuthPage(),
  '/log': (context) => LoginScreen(),
  '/reg': (context) => RegScreen(),
  '/fpas': (context) => const ForgetPassword(),
  '/home': (context) => HomeScreen(),
};
