import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  static const String route = '/splash';

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash.png',
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,
    );
  }
}
