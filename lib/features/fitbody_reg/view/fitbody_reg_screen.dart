import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitbody/features/fitbody_login/view/fitbody_log_screen.dart';
import 'package:fitbody/features/setup/screens/setup_screen.dart';
import 'package:fitbody/theme/custom_themes/elevated_button_theme.dart';
import 'package:fitbody/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class RegScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void createUser() async {
    WidgetsFlutterBinding.ensureInitialized();
    if (passwordController.text == confirmPasswordController.text) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } else {
      print('password is not the same');
    }
  }

  RegScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(27, 26, 26, 1),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.green,
          iconSize: 30,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Create Account',
          style: FTextTheme.AppbarTextTheme.headlineLarge,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              //welcome text
              Text('Let`s start!',
                  style: FTextTheme.describeTextTheme.headlineLarge),
              //username textfield
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Username',
                    style: FTextTheme.describeTextTheme.bodyMedium,
                  ),
                  SizedBox(width: 100),
                ],
              ),

              Container(
                margin: const EdgeInsets.only(
                    top: 5, left: 40, right: 40, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              //email textfield
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Email',
                    style: FTextTheme.describeTextTheme.bodyMedium,
                  ),
                  SizedBox(width: 100),
                ],
              ),

              Container(
                margin: const EdgeInsets.only(top: 5, left: 40, right: 40),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Password',
                    style: FTextTheme.describeTextTheme.bodyMedium,
                  ),
                  SizedBox(width: 100),
                ],
              ),
              //password textfield

              Container(
                margin: const EdgeInsets.only(
                    top: 5, left: 40, right: 40, bottom: 10),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Confirm Password',
                    style: FTextTheme.describeTextTheme.bodyMedium,
                  ),
                  SizedBox(width: 100),
                ],
              ),
              //confirm pass textfield

              Container(
                margin: const EdgeInsets.only(
                    top: 5, left: 40, right: 40, bottom: 10),
                child: TextField(
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              //login button

              SizedBox(
                width: 310,
                height: 80,
                child: ElevatedButton(
                  style: FElevatedButtonTheme.fitElevatedButtonTheme.style,
                  onPressed: () {
                    createUser();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SetupScreen()),
                    );
                  },
                  child: Text('Создать аккаунт',
                      style: FTextTheme.describeTextTheme.headlineLarge),
                ),
              ),
              SizedBox(height: 90),
              IconButton(
                icon: Text(
                  'Войти в аккаунт',
                  style: FTextTheme.describeTextTheme.bodyMedium,
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
