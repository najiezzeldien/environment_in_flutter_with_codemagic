import 'package:environments_with_codemagic/app_wideget.dart';
import 'package:environments_with_codemagic/config_reader.dart';
import 'package:environments_with_codemagic/environment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  late MaterialColor primaryColor;
  switch (env) {
    case Environment.dev:
      primaryColor = Colors.blue;
      break;
    case Environment.prod:
      primaryColor = Colors.red;
      break;
  }
  runApp(
    Provider.value(
      value: primaryColor,
      child: const MyApp(),
    ),
  );
}
