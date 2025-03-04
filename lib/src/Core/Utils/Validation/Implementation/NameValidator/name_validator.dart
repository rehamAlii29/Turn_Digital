import '../../Abstract/validator_imp.dart';
import '../../validation_constants.dart';

class NameValidator extends ValidatorImp {
  NameValidator._();

  static NameValidator get instance => NameValidator._();

  @override
  String? validate(String? value, [Map<String, dynamic>? argument]) {
    if (value == null || value.trim().isEmpty) {
      return ValidationConstants.emptyData;
    }

    List<String> words = value.trim().split(RegExp(r'\s+'));

    if (words.length < 3) {
      return "Must be at least 3 words separated by space";
    }

    return null;
  }
}
