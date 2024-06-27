import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitbody/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  void signUserOut() {
    FirebaseAuth.instance.signOut();
    WidgetsFlutterBinding.ensureInitialized();
  }

  final user = FirebaseAuth.instance.currentUser;
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
          onPressed: signUserOut,
        ),
        title: Text(
          'Home Page',
          style: FTextTheme.AppbarTextTheme.headlineLarge,
        ),
      ),
      body: Center(
        child: Text("Logged In as ${user?.email ?? 'Unknown'}"),
      ),
    );
  }
}
