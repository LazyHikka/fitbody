import 'package:fitbody/features/fitbody_login/fitbody_login.dart';
import 'package:fitbody/features/fitbody_reg/fitbody_reg.dart';
import 'package:fitbody/features/forget_pas/forget_pas.dart';

final routes = {
  '/': (context) => const LoginScreen(),
  '/reg': (context) => const RegScreen(),
  '/fpas': (context) => const ForgetPassword(),
};
