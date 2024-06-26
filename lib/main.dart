import 'dart:async';

import 'package:firebase_core/firebase_core.dart';

import 'package:fitbody/fitbodyapp.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final talker = Talker();
  GetIt.I.registerSingleton(talker);
  GetIt.I<Talker>().debug('Talker started');
  GetIt.I<Talker>().error('Talker started');
  GetIt.I<Talker>().info('Talker started');

  final app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  talker.info(app.options.projectId);

  runZonedGuarded(
    () => runApp(const FitBody()),
    (e, st) => GetIt.I<Talker>().handle(e, st),
  );
}
