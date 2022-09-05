import 'package:flutter/material.dart';
import 'package:flutter_splash/pages/home/home_page.dart';
import 'package:flutter_splash/pages/splash/splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomePage.route: (context) => const HomePage(),
        SplashPage.route: (context) => const SplashPage()
      },
      initialRoute: SplashPage.route,
    );
  }
}
