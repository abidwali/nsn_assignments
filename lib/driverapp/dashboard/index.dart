import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/profile/profile.dart';
import 'dashboard.dart';
import 'earnings.dart';
import 'history.dart';
import 'menu_drawer_widget.dart';

class RequestDashboard extends StatefulWidget {
  const RequestDashboard({super.key});

  @override
  State<RequestDashboard> createState() => _RequestDashboardState();
}

class _RequestDashboardState extends State<RequestDashboard> {
  int _currentIndex = 3;

  final List<Widget> _list = <Widget>[
    const MenuDrawerWidget(),
    const EarningScreen(),
    const HistoryScreen(),
    const DashboardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Profile(),
              ),
            );
          },
          icon: const Icon(
            Icons.person,
            color: Colors.black,
          ),
        ),
      ),
      body: _list[_currentIndex],
      // body: PageView(
      //   scrollDirection: Axis.horizontal,

      //   // reverse: true,
      //   // physics: BouncingScrollPhysics(),
      //   controller: controller,

      //   onPageChanged: (index) {
      //     setState(() {
      //       _curr = index;
      //     });
      //   },
      //   children: _list,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            label: "Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.currency_rupee,
              color: Colors.black,
            ),
            label: "My Earning",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work_history,
              color: Colors.black,
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
              color: Colors.black,
            ),
            label: "Dashboard",
          ),
        ],
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        currentIndex: _currentIndex,
        onTap: (setValue) {
          setState(() {
            _currentIndex = setValue;
          });
        },
      ),
    );
  }
}
