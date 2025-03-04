import '../../../../Core/NetworkStructure/Params/params.dart';

class RegisterParams extends Params {
  String password;
  String name;
  String? email;

  RegisterParams({
    required this.password,
    required this.name,
    this.email,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'password': password,
      'name': name,
      'email': email,
    };
  }
}
