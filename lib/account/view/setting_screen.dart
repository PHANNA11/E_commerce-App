import 'package:e_commerce/account/model/setting_model.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({super.key, required this.settingModel});
  SettingModel? settingModel;
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.settingModel!.title ?? 'App Option'),
      ),
    );
  }
}
