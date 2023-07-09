import 'package:flutter/material.dart';
import 'package:cboj_sulfehorateb/flavors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Splash Screen ${F.name}')),
    );
  }
}