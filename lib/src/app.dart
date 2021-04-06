import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_glass_morphism/src/pages/home/home_page.dart';
import 'pages/home/home_page.dart';

class App extends StatefulWidget {
  static bool firstCome = true;
  static String token;

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    WidgetsBinding.instance.addObserver(this);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
