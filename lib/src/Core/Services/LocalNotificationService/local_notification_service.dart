import 'dart:convert';
import 'dart:io';
import 'package:flutter_base/src/Core/Utils/general_utils.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notifications.',
    importance: Importance.high,
  );

  Future<void> requestNotificationPermission() async {
    if (Platform.isAndroid) {
      final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

      final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
          flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

      bool? granted =
          await androidImplementation?.requestNotificationsPermission();
    }
  }

  void localNotificationConfiguration() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings();

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }

  static Future<void> scheduleNotification({
    required int id,
    required String title,
    required String body,
    required String time,
  }) async {
    DateTime eventTime = DateFormat("yyyy-MM-dd HH:mm:ss").parse(time.trim());
    DateTime scheduledTime = eventTime.subtract(Duration(hours: 1));

    final location = tz.getLocation('Africa/Cairo');
    final tz.TZDateTime scheduledTZTime =
        tz.TZDateTime.from(scheduledTime, location);

    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
      'event_channel',
      'Event Notifications',
      channelDescription: 'Reminders for upcoming events',
      importance: Importance.high,
      priority: Priority.high,
    );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: DarwinNotificationDetails(),
    );

    if (scheduledTZTime.isAfter(tz.TZDateTime.now(location))) {
      await _flutterLocalNotificationsPlugin.zonedSchedule(
        id,
        title,
        body,
        scheduledTZTime,
        notificationDetails,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
      );
      printDM(" Notification successfully scheduled!");
    } else {
      await _flutterLocalNotificationsPlugin.show(
          id, title, body, notificationDetails);
    }
  }
}
