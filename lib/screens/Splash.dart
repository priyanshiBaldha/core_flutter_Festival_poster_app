import 'dart:async';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  changeScreen() {
    Timer.periodic(const Duration(seconds: 20), (timer) {
      Navigator.of(context).pushReplacementNamed('HomePage');
    });
  }

  @override
  void initState() {
    super.initState();

    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              height: 200,
              width: 200,
              child: Image.asset("assets/images/img.png"),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Festival Poster App",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 50,
            ),
            const CircularProgressIndicator(
              color: Colors.black,
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xffF5E8E4),
    );
  }
}
