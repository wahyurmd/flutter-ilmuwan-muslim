import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ilmuwan_muslim_app/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {

  @override void initState() {
    super.initState();
    startSplashScreeen();
  }

  startSplashScreeen() async {
    var duration = const Duration(seconds: 5);

    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return const HomePage();
        })
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff329cef),
      body: Center(
        child: Image.asset('images/logo.png', width: 200.0, height: 100.0),
      ),
    );
  }
}
