import 'package:crop_watch/utils/navigation_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'activities/splash_screen.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  WindowOptions windowOptions = const WindowOptions(
    size: Size(800, 600),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.setFullScreen(true);
  });
  runApp(const CropWatch());
}

class CropWatch extends StatefulWidget {
  const CropWatch({super.key});

  @override
  State<CropWatch> createState() {
    return _CropWatchState();
  }
}

class _CropWatchState extends State<CropWatch> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NavigationBarProvider>(
          create: (context) => NavigationBarProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Crop Watch',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
