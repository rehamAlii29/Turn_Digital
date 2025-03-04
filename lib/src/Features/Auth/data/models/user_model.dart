import '../../../../Core/Utils/general_utils.dart';

class UserModel {
  String? id;

  String? name;

  String? email;

//<editor-fold desc="Data Methods">
  UserModel({
    required this.id,
    required this.name,
    this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'user_id': this.id,
      'name': this.name,
      'email': this.email,
    };
  }

  UserModel.fromMap(
    Map<String, dynamic> map,
  ) {
    printDM("************UserModel.fromMap(map)************");
    id = (map['user_id']).toString() ?? "0";
    printDM("id => $id ");
    name = map['name'] ?? "";
    printDM("name => $name ");
    email = map['email'] ?? "";
    printDM("email => $email ");
  }

//</editor-fold>
}
