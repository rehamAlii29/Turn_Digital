import '../../Abstract/validator_imp.dart';
import '../../validation_constants.dart';

class PasswordValidator extends ValidatorImp {
  PasswordValidator._();

  static PasswordValidator get instance => PasswordValidator._();

  @override
  String? validate(String? value, [Map<String, dynamic>? argument]) {
    if (value == null || value.isEmpty) {
      return ValidationConstants.emptyData;
    }

    if (value.length < 8) {
      return "Password must be at least 8 characters long";
    }

    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return "Password must contain at least one uppercase letter";
    }

    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return "Password must contain at least one lowercase letter";
    }

    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return "Password must contain at least one number";
    }

    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return "Password must contain at least one special character";
    }

    return null; // Valid password
  }
}
