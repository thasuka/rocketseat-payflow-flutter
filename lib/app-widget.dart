import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow/modules/barcode-scanner/barcode-scanner-page.dart';
import 'package:payflow/modules/home/home-page.dart';
import 'package:payflow/modules/login/login-page.dart';
import 'package:payflow/modules/splash/splash-page.dart';
import 'package:payflow/shared/themes/app-colors.dart';

class AppWidget extends StatelessWidget {
  // const AppWidget({Key? key}) : super(key: key);

  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NLW PayFlow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: AppColors.primary,
      ),
      // home: const LoginPage(),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/barcode-scanner": (context) => BarcodeScannerPage(),
      },
    );
  }
}
