// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MenuDrawerWidget extends StatefulWidget {
  const MenuDrawerWidget({super.key});

  @override
  State<MenuDrawerWidget> createState() => _MenuDrawerWidgetState();
}

class _MenuDrawerWidgetState extends State<MenuDrawerWidget> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final urlImage = "assets/images/profileavatar1.png";

    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: "Yash Yadav",
              vehicleType: "2 WHEELER",
              onClicked: () {
                //   Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => UserPage(
                //     name: 'Sarah Abs',
                //     urlImage: urlImage,
                //   ),
                // ),
                // )
              },
            ),
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 14),
                  buildMenuItem(
                    text: 'Earning & incentives',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  buildMenuItem(
                    text: 'Performance',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  buildMenuItem(
                    text: 'Tips',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  buildMenuItem(
                    text: 'Login history',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  buildMenuItem(
                    text: 'Guides',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  buildMenuItem(
                    text: 'Message',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  const Divider(color: Colors.black),
                  buildMenuItem(
                    text: 'Refer & Earn',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  buildMenuItem(
                    text: 'Setting',
                    icon: Icons.account_balance_wallet_outlined,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  Container(
                    height: 100,
                    child: Column(
                      children: [
                        const Spacer(),
                        const ListTile(
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

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String vehicleType,
    required VoidCallback onClicked,
  }) =>
      Container(
        color: const Color(0xffF5F5FA),
        padding:
            const EdgeInsets.only(left: 10, right: 10, bottom: 15, top: 10),
        child: Column(
          children: [
            InkWell(
              onTap: onClicked,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(urlImage),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            "★ 4.5",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            vehicleType,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                          ),
                          const SizedBox(width: 10),
                          const Text(
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
