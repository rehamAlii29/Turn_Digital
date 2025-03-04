import 'dart:ui';

import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';

class DrawerModel {
  final String title;
  final String icon;
  final int counter;
  final VoidCallback onTap;

  DrawerModel({
    required this.title,
    required this.icon,
    this.counter = 0,
    required this.onTap,
  });

  static List<DrawerModel> drawer = [
    DrawerModel(
      title: 'My Profile',
      icon: Assets.profileDrawer,
      onTap: () {},
    ),
    DrawerModel(
      title: 'Message',
      icon: Assets.message,
      counter: 5,
      onTap: () {},
    ),
    DrawerModel(
      title: 'Calender',
      icon: Assets.calender,
      onTap: () {},
    ),
    DrawerModel(
      title: 'BookMark',
      icon: Assets.bookmark,
      onTap: () {},
    ),
    DrawerModel(
      title: 'Contact Us',
      icon: Assets.contact,
      onTap: () {},
    ),
    DrawerModel(
      title: 'Settings',
      icon: Assets.setting,
      onTap: () {},
    ),
    DrawerModel(
      title: 'Help & FAQs',
      icon: Assets.help,
      onTap: () {},
    ),
    DrawerModel(
      title: 'Sign Out',
      icon: Assets.signout,
      onTap: () {},
    ),
  ];
}
