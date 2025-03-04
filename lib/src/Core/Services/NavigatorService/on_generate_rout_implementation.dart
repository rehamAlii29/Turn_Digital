import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Features/AllEvents/presentation/pages/all_events_page.dart';
import 'package:flutter_base/src/Features/Auth/presentation/pages/auth_pages_imports.dart';
import 'package:flutter_base/src/Features/Base/presentation/pages/base_page.dart';
import '../../../Features/Event/presentation/pages/event_details_page.dart';
import '../../../Features/Organizer/presentation/pages/organizer_page.dart';
import '../../Constants/Navigation/navigation_const.dart';

class OnGenerateRoutImplementation {
  OnGenerateRoutImplementation._();

  static final OnGenerateRoutImplementation _instance =
      OnGenerateRoutImplementation._();

  factory OnGenerateRoutImplementation() {
    return _instance;
  }

  Route<dynamic>? onGenerateRout(RouteSettings setting) {
    switch (setting.name) {
      case basePageKey:
        return CupertinoPageRoute(builder: (_) => const BasePage());
      case registerPageKey:
        return CupertinoPageRoute(builder: (_) => const RegisterPage());
      case loginPageKey:
        return CupertinoPageRoute(builder: (_) => const LoginPage());
      case verificationPageKey:
        String mail = setting.arguments as String;
        return CupertinoPageRoute(
            builder: (_) => VerificationPage(
                  mail: mail,
                ));
      case allEventPageKey:
        return CupertinoPageRoute(builder: (_) => const AllEventsPage());
      case eventDetailsKey:
        return CupertinoPageRoute(builder: (_) => const EventDetailsPage());
      case organizerPageKey:
        return CupertinoPageRoute(builder: (_) => const OrganizerPage());

      default:
        return null;
    }
  }
}
