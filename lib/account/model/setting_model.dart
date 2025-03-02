import 'package:flutter/material.dart';

class SettingModel {
  String? title;
  String? subTitle;
  Color? bacgroundColor;
  IconData? icons;
  int? type;
  SettingModel({
    this.title,
    this.subTitle,
    this.bacgroundColor,
    this.icons,
    this.type,
  });

  List<SettingModel> get settings => [
        SettingModel(
          title: 'Address',
          subTitle: 'location',
          type: 1,
          bacgroundColor: Colors.cyanAccent,
          icons: Icons.location_history,
        ),
        SettingModel(
          title: 'Privacy',
          subTitle: 'System permission change',
          type: 2,
          bacgroundColor: Colors.cyan,
          icons: Icons.privacy_tip,
        ),
        SettingModel(
          title: 'Notification',
          subTitle: 'alert in app',
          type: 3,
          bacgroundColor: Colors.lightBlue,
          icons: Icons.notifications,
        ),
        SettingModel(
          title: 'Sign Out',
          subTitle: 'Leave this user',
          type: 4,
          bacgroundColor: Colors.red,
          icons: Icons.person,
        ),
      ];
}
