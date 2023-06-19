import 'package:flutter/material.dart';

import '../../utils/colorp.dart';
import '../../utils/config.dart';

class MonitorScreen extends StatefulWidget {
  const MonitorScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MonitorScreen> createState() {
    return _MonitorScreenState();
  }
}

class _MonitorScreenState extends State<MonitorScreen> {
  @override
  void initState() {
    super.initState();
    Log.log(Log.TAG_HOME, "Opening Monitor-Screen.", Log.I);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 15, 15),
                    child: Card(
                      color: ColorP.slight,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: const Column(
                        children: [Expanded(child: SizedBox())],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 30, 30, 15),
                  child: Card(
                    color: ColorP.light,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: const Column(
                      children: [
                        Expanded(
                            child: SizedBox(
                          width: 360,
                        ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 15, 30),
                  child: Card(
                    color: ColorP.light,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: const SizedBox(
                      height: 320,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 30, 30),
                child: Card(
                  color: ColorP.light,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: const SizedBox(
                    height: 320,
                    width: 360,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
