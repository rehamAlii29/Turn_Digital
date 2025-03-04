import 'dart:io';
import 'package:flutter_base/src/Core/App/app_layout.dart';
import 'package:flutter_base/src/Core/App/http_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/NetworkStructure/Networking/network_service.dart';
import 'package:timezone/data/latest.dart' as tzl;

import '../Services/LocalNotificationService/local_notification_service.dart';
import '../Services/Storage/src/Resources/Hive/hive_storage_imp.dart';

/// Contains All The Methods needed to be run before MyApp Compiles
class AppInitializer {
  AppInitializer._();

  static final LocalNotificationService _localNotificationService =
      LocalNotificationService();

  static Future<void> initializeApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    HttpOverrides.global = MyHttpOverrides();
    tzl.initializeTimeZones();
    NetworkService().init();

    await AppLayout.fixedOrientation();
    _localNotificationService.localNotificationConfiguration();
    await _localNotificationService.requestNotificationPermission();
    await LocalStorageService().init();
  }
}
