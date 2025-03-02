import 'package:e_commerce/account/model/setting_model.dart';
import 'package:e_commerce/account/view/setting_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final settingList = SettingModel().settings;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Accoount',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DancingScript'),
              ),
              buildCardProfile(),
              buildListCategory(),
              buildLsitSetting(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCardProfile() {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            leading: CircleAvatar(
              maxRadius: 40,
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/14653174/pexels-photo-14653174.jpeg'),
            ),
            title: Text(
              'Mr.Nut',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Freehand-Regular'),
            ),
            subtitle: Text(
              'Network',
              style: TextStyle(color: Colors.black45),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('dwee'),
                    Text('dwee'),
                    Text('dwee'),
                    Text('dwee'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('dwee'),
                    Text('dwee'),
                    Text('dwee'),
                    Text('dwee'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildListCategory() {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 2,
          children: [
            buildCategory(title: 'Wallet', icons: Icons.currency_exchange),
            buildCategory(title: 'Gif', icons: Icons.gif_box),
            buildCategory(title: 'Message', icons: Icons.chat),
            buildCategory(title: 'Service', icons: Icons.support_agent_sharp),
          ],
        ),
      ),
    );
  }

  Widget buildCategory({IconData? icons, String? title}) {
    return Container(
      margin: const EdgeInsets.all(2),
      height: 90,
      width: 90,
      child: Column(
        children: [
          CircleAvatar(
            maxRadius: 35,
            child: Center(
              child: Icon(
                icons ?? Icons.ac_unit_rounded,
                size: 35,
              ),
            ),
          ),
          Text(title ?? 'title')
        ],
      ),
    );
  }

  Widget buildLsitSetting() {
    return Column(
      children: List.generate(
        settingList.length,
        (index) => buildSettingCard(setting: settingList[index]),
      ),
    );
  }

  Widget buildSettingCard({required SettingModel setting}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SettingScreen(settingModel: setting),
            ));
      },
      child: Container(
        margin: const EdgeInsets.all(4),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
              child: CircleAvatar(
                backgroundColor: setting.bacgroundColor ?? Colors.cyan,
                maxRadius: 28,
                child: Center(
                  child: Icon(
                    setting.icons ?? Icons.settings,
                    size: 40,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                spacing: 4,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    setting.title ?? 'Setting',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    setting.subTitle ?? 'permission',
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 26,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
