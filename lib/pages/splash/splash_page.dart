import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_splash/pages/home/home_page.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  static const route = '/';
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _navigateToPage();
    super.initState();
  }

  void _navigateToPage() {
    Timer(const Duration(seconds: 0), () {
      loadData().then((value) => Navigator.of(context)
          .pushNamedAndRemoveUntil(HomePage.route, (route) => false));
    });
  }

  Future<void> loadData() async {
    await Future.delayed(const Duration(seconds: 5));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Center(
        // child: Image.asset(
        //   'assets/image/spotify.png',
        //   width: 100,
        // ),
        child: Lottie.asset('assets/lottie/mail.json', width: 100),
      ),
    );
  }
}
