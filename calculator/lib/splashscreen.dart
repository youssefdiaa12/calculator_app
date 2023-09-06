import 'package:flutter/material.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Image.asset('assets/splash_screen.png',height: double.infinity,width: double.infinity),
    );
  }
}
