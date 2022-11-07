import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../utilis/constant_colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: kdarkGrey,
                    child: Icon(Icons.support_agent),
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: kdarkGrey,
                    child: Icon(Icons.map),
                  ),
                  const Spacer(),
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
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(19),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kgrey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: isSwitched == false
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 180,
                            width: 160,
                            child: SfRadialGauge(
                              axes: <RadialAxis>[
                                RadialAxis(
                                  pointers: const <GaugePointer>[
                                    RangePointer(
                                      value: 25.0,
                                      width: 0.2,
                                      sizeUnit: GaugeSizeUnit.factor,
                                      color: Color.fromARGB(120, 0, 169, 181),
                                      cornerStyle: CornerStyle.bothFlat,
                                    ),
                                  ],
                                  minimum: 0,
                                  maximum: 100,
                                  showLabels: false,
                                  showTicks: false,
                                  startAngle: 0,
                                  endAngle: 360,
                                  annotations: const <GaugeAnnotation>[
                                    GaugeAnnotation(
                                      widget: Text('₹250'),
                                      verticalAlignment: GaugeAlignment.far,
                                      angle: 90,
                                    ),
                                    GaugeAnnotation(
                                      angle: -90,
                                      widget: Text("Today's Earning"),
                                    ),
                                  ],
                                  axisLineStyle: const AxisLineStyle(
                                    thickness: 0.2,
                                    cornerStyle: CornerStyle.bothFlat,
                                    color: Color.fromARGB(30, 0, 169, 181),
                                    thicknessUnit: GaugeSizeUnit.factor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "₹5000",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "This Week Earning",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "₹6789",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Last Week Earning",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    : Image.asset("assets/images/map.png"),
              ),
              const ListTile(
                title: Text("Quick Actions"),
              ),
              Row(
                children: [
                  Container(
                    height: 170,
                    width: 160,
                    decoration: BoxDecoration(
                      color: kgrey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 44,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "₹6789",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "wallet",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 170,
                    width: 160,
                    decoration: BoxDecoration(
                      color: kgrey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 44,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "30:40:58",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "this week Login Durtion",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 170,
                    width: 160,
                    decoration: BoxDecoration(
                      color: kgrey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 44,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "₹6789",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "floating cash",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
