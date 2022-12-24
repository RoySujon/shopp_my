import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopp_my/screen/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffE38800),
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text('Shopp.my'),
          Align(child: SvgPicture.asset('assets/images/Frame.svg')),
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/splash.png')),
        ],
      ),
    );
  }
}
