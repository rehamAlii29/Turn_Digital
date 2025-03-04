import 'dart:ui';

import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';

class TypeModel {
  final String title;
  final String icon;
  final Color color;

  TypeModel({required this.color, required this.title, required this.icon});

  static List<TypeModel> typeList = [
    TypeModel(
        color: const Color(0xff862D28), title: 'Sports', icon: Assets.sport),
    TypeModel(
        color: const Color(0xff524037), title: 'Music', icon: Assets.music),
    TypeModel(color: const Color(0xff29D697), title: 'Food', icon: Assets.food),
  ];
}
