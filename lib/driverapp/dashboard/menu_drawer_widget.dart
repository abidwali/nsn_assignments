// ignore_for_file: prefer_const_declarations, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:nsn_assignments/driverapp/dashboard/menubar_items/guides.dart';
import 'package:nsn_assignments/driverapp/dashboard/menubar_items/login_history.dart';
import 'package:nsn_assignments/driverapp/dashboard/menubar_items/message.dart';
import 'package:nsn_assignments/driverapp/dashboard/menubar_items/performance.dart';
import 'package:nsn_assignments/driverapp/dashboard/menubar_items/refer_and_earn.dart';
import 'package:nsn_assignments/driverapp/dashboard/menubar_items/tips.dart';

import '../profile/profile.dart';
import '../utilis/constant_colors.dart';
import 'menubar_items/earnings_and_incentives.dart';
import 'menubar_items/setting.dart';

class MenuDrawerWidget extends StatefulWidget {
  const MenuDrawerWidget({super.key});

  @override
  State<MenuDrawerWidget> createState() => _MenuDrawerWidgetState();
}

class _MenuDrawerWidgetState extends State<MenuDrawerWidget> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              height: 50,
              color: kgrey,
            ),
            buildHeader(),
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 14),
                  buildMenuItem(
                    text: 'Earning & incentives',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EarningAndIncentives(),
                          ));
                    },
                  ),
                  buildMenuItem(
                    text: 'Performance',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PerformanceMenu(),
                          ));
                    },
                  ),
                  buildMenuItem(
                    text: 'Tips',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Tips(),
                          ));
                    },
                  ),
                  buildMenuItem(
                    text: 'Login history',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginHistory(),
                          ));
                    },
                  ),
                  buildMenuItem(
                    text: 'Guides',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GuidesMenu(),
                          ));
                    },
                  ),
                  buildMenuItem(
                    text: 'Message',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MessageMenu(),
                          ));
                    },
                  ),
                  const Divider(color: Colors.black),
                  buildMenuItem(
                    text: 'Refer & Earn',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReferAndEarnMenu(),
                          ));
                    },
                  ),
                  buildMenuItem(
                    text: 'Setting',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SettingsMenu(),
                          ));
                    },
                  ),
                  Container(
                    height: 100,
                    child: Column(
                      children: const [
                        Spacer(),
                        ListTile(
                          leading: Icon(Icons.close),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() => Container(
        color: const Color(0xffF5F5FA),
        padding:
            const EdgeInsets.only(left: 10, right: 10, bottom: 15, top: 10),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ),
                );
              },
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage("assets/images/profileavatar1.png"),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Yash Yadav",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "★ 4.5",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Text(
                            "2 WHEELER",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "MH-50-ED-6058",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios, color: Colors.black),
                ],
              ),
            ),
            const Divider(color: Colors.black),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Shift Status",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                FlutterSwitch(
                  value: isSwitched,
                  showOnOff: true,
                  height: 28,

                  //inactiveColor: const Color(0xffEAEAEA),
                  activeColor: Colors.green,
                  activeText: "On",
                  inactiveText: "Off",
                  inactiveTextColor: Colors.black,
                  onToggle: (value) {
                    debugPrint("VALUE : $value");
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = const Color(0xff272727);
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    // switch (index) {
    //   case 0:
    //     Navigator.of(context).push(MaterialPageRoute(
    //       builder: (context) => PeoplePage(),
    //     ));
    //     break;
    //   case 1:
    //     Navigator.of(context).push(MaterialPageRoute(
    //       builder: (context) => FavouritesPage(),
    //     ));
    //     break;
    // }
  }
}
