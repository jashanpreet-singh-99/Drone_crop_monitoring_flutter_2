import 'package:flutter/material.dart';

import '../../utils/config.dart';

class FarmScreen extends StatefulWidget {
  const FarmScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FarmScreen> createState() {
    return _FarmScreenState();
  }
}

class _FarmScreenState extends State<FarmScreen> {
  @override
  void initState() {
    super.initState();
    Log.log(Log.TAG_HOME, "Opening Farm.", Log.I);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Text('Farm Page'),
            ),
          ],
        ),
      ),
    );
  }
}
