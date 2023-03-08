import 'package:flutter/material.dart';
import 'dart:async';

import 'LoginScreen.dart';

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
    Timer(const Duration(seconds: 3), (() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(
                child: Image(
                    height: 250,
                    width: 300,
                    image: NetworkImage(
                        'https://repository-images.githubusercontent.com/202429703/46f9db00-c4f6-11ea-875b-d58023058142')),
              )
            ]),
      ),
    );
  }
}
