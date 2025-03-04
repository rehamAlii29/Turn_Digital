import 'package:flutter_base/src/Core/Constants/strings/app_strings.dart';

mixin ApiNames {
  static const String baseUrl = "http://api.td-dev.turndigital.net/api/";

  // Auth
  final String uRLRegister = "${baseUrl}users/register";

  String uRLFetchAllEvents({required int page, required int limit}) =>
      "${baseUrl}events?page=$page&limit=$limit";

  String uRLGetEventDetails({required int eventId}) =>
      "${baseUrl}events/$eventId";

  String uRLFetchOrganizerDetails({required String id}) =>
      "${baseUrl}organizers/$id";

  final String uRLVerifyPhone = "${baseUrl}verify_phone";
  final String uRLCheckPhone = "${baseUrl}check_phone";
  final String uRLResetPassword = "${baseUrl}reset_password";
  final String uRLChangePassword = "${baseUrl}change_password";

  final String urlSearch = "${baseUrl}search";
  final String urlNotification = "${baseUrl}fetch_notifications";
  final String uRLFetchPrivacy = '${baseUrl}privacy';
  final String uRLFetchConditions = '${baseUrl}terms';
  final String uRLFetchAppInfo = '${baseUrl}fetch_app_info';
  final String uRLFetchFaq = '${baseUrl}fetch_faq';
  final String uRLFetchAbout = '${baseUrl}about_app';
  final String uRLLogout = '${baseUrl}logout';
}
