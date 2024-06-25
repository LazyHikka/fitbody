import 'package:fitbody/features/fitbody_reg/fitbody_reg.dart';
import 'package:fitbody/features/forget_pas/forget_pas.dart';
import 'package:fitbody/theme/custom_themes/elevated_button_theme.dart';
import 'package:fitbody/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          'Log In',
          style: FTextTheme.AppbarTextTheme.headlineLarge,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 100),
            //welcome text
            Text('Welcome!', style: FTextTheme.describeTextTheme.headlineLarge),
            //username textfield
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Логин',
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

            //password textfield
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Пароль',
                  style: FTextTheme.describeTextTheme.bodyMedium,
                ),
                SizedBox(width: 100),
              ],
            ),

            Container(
              margin: const EdgeInsets.only(top: 5, left: 40, right: 40),
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
            //forgot password

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Text(
                    'Забыл пароль',
                    style: FTextTheme.describeTextTheme.bodyMedium,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetPassword()),
                    );
                  },
                ),
                SizedBox(width: 50),
              ],
            ),
            //login button

            SizedBox(
              width: 200,
              height: 70,
              child: ElevatedButton(
                style: FElevatedButtonTheme.fitElevatedButtonTheme.style,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegScreen()),
                  );
                },
                child: Text('Войти',
                    style: FTextTheme.describeTextTheme.headlineLarge),
              ),
            ),
            SizedBox(height: 150),

            //Create acc button
            IconButton(
              icon: Text(
                'Создать аккаунт',
                style: FTextTheme.describeTextTheme.bodyMedium,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
