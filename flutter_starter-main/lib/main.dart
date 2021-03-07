import 'package:flutter/material.dart';
import 'package:flutterstarter/locator.dart';
import 'package:flutterstarter/views/Home.dart';
import 'package:flutterstarter/views/DaftarTeamLigaInggris.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DaftarTeamLigaInggris(),
    );
  }
}
