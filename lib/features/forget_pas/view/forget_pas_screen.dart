import 'package:fitbody/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
            'Forget Password',
            style: FTextTheme.AppbarTextTheme.headlineLarge,
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 100),
              //welcome text
              Text('Forgot Password?',
                  style: FTextTheme.describeTextTheme.headlineLarge),
              //username textfield
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Введите свой email',
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
            ],
          ),
        ));
  }
}
