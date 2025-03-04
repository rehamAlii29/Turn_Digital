import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String phone;
  final String parentName;
  final String parentPhone;
  final String profileImage;
  final String apiToken;
  final bool requirePhoneVerification;
  final bool isPhoneVerified;

//<editor-fold desc="Data Methods">

  const User({
    required this.id,
    required this.name,
    required this.phone,
    required this.parentName,
    required this.parentPhone,
    required this.apiToken,
    required this.requirePhoneVerification,
    required this.isPhoneVerified,
    required this.profileImage,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'parent_name': parentName,
      'parent_phone': parentPhone,
      'profile_image': profileImage,
      'api_token': apiToken,
      'require_phone_verification': requirePhoneVerification,
      'is_phone_verified': isPhoneVerified,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"] != null ? json["id"].toString() : "",
      name: json["name"] != null ? json["name"].toString() : "",
      phone: json["phone"] != null ? json["phone"].toString() : "",
      parentName:
          json["parent_name"] != null ? json["parent_name"].toString() : "",
      parentPhone:
          json["parent_phone"] != null ? json["parent_phone"].toString() : "",
      profileImage:
          json["profile_image"] != null ? json["profile_image"].toString() : "",
      apiToken: json["api_token"] != null ? json["api_token"].toString() : "",
      requirePhoneVerification: json["require_phone_verification"] != null
          ? json["require_phone_verification"].toString() == "true"
          : false,
      isPhoneVerified: json["is_phone_verified"] != null
          ? json["is_phone_verified"].toString() == "true"
          : false,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        phone,
        parentName,
        parentPhone,
        profileImage,
        apiToken,
        requirePhoneVerification,
        isPhoneVerified,
      ];

  User copyWith({
    String? id,
    String? name,
    String? phone,
    String? parentName,
    String? parentPhone,
    String? profileImage,
    String? apiToken,
    bool? requirePhoneVerification,
    bool? isPhoneVerified,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      parentName: parentName ?? this.parentName,
      parentPhone: parentPhone ?? this.parentPhone,
      profileImage: profileImage ?? this.profileImage,
      apiToken: apiToken ?? this.apiToken,
      requirePhoneVerification:
          requirePhoneVerification ?? this.requirePhoneVerification,
      isPhoneVerified: isPhoneVerified ?? this.isPhoneVerified,
    );
  }

  static User example = const User(
    id: "1",
    name: "Ahmed",
    phone: "01000000000",
    parentName: "Mohamed",
    apiToken: "token",
    parentPhone: "01000000000",
    requirePhoneVerification: false,
    isPhoneVerified: true,
    profileImage:
        "https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png",
  );
}
