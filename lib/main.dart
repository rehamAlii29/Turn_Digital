import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/App/app_initializer.dart';
import 'package:flutter_base/src/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initializeApp();

  runApp(
    const MyApp(),
  );
}
