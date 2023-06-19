import 'package:crop_watch/activities/home_fragments/farm_screen.dart';
import 'package:crop_watch/activities/home_fragments/monitor_screen.dart';
import 'package:crop_watch/activities/home_fragments/settings_screen.dart';
import 'package:flutter/material.dart';

import '../utils/colorp.dart';
import '../utils/config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Log.log(Log.TAG_HOME, "Opening Home-Screen.", Log.I);
  }

  var currentTabs = [
    const MonitorScreen(),
    const FarmScreen(),
    const SettingsScreen()
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: ColorP.light,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(40)),
            ),
            child: const Column(
              children: [
                Expanded(
                  child: SizedBox(
                    width: 110,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              NavigationRail(
                minWidth: 110,
                backgroundColor: Colors.transparent,
                selectedIndex: _selectedIndex,
                groupAlignment: -1,
                labelType: NavigationRailLabelType.none,
                leading: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: Card(
                      elevation: 0,
                      color: ColorP.light,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.anchor,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: Card(
                      elevation: 0,
                      color: ColorP.dark,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.close,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                destinations: <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Card(
                          elevation: 1,
                          color: ColorP.dark,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.monitor,
                              color: Colors.grey,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    label: const SizedBox(),
                    selectedIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Card(
                          elevation: 1,
                          color: ColorP.dark,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.monitor,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Card(
                          elevation: 1,
                          color: ColorP.dark,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add_chart,
                              color: Colors.grey,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    label: const SizedBox(),
                    selectedIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Card(
                          elevation: 1,
                          color: ColorP.dark,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add_chart,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Card(
                          elevation: 1,
                          color: ColorP.dark,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.settings,
                              color: Colors.grey,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    label: const SizedBox(),
                    selectedIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Card(
                          elevation: 1,
                          color: ColorP.dark,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: currentTabs[_selectedIndex],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
