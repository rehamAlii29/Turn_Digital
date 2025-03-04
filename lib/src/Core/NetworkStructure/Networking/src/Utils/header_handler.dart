import 'package:flutter_base/src/Core/Utils/utils.dart';
import 'package:flutter_base/src/Shared/Caches/user_cache.dart';

class HeaderHandler {
  HeaderHandler._();

  static HeaderHandler instance = HeaderHandler._();

  /// set header
  Map<String, String> setHeaders(bool isAuth) {
    String token = "";
    if (isAuth) {
      // UserCache.instance.data.then((value) {
      //   if (value != null) {
      //     token = value.apiToken ?? '';
      //   }
      // }
      // );
      final user = UserCache.instance.data;
      // token = user?.apiToken ?? "";
    }
    return {if (isAuth && (token != "")) 'Authorization': 'Bearer $token'};
  }
}
