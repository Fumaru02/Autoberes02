import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
                child: Image(
              image: AssetImage("assets/icons/bg.png"),
              fit: BoxFit.fill,
            )),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 126,
                  ),
                  Image.asset(
                    width: 258,
                    height: 142,
                    "assets/icons/logo3.png",
                  ),
                  SizedBox(
                    height: 250,
                  ),
                  SpinKitWave(
                    color: Color(0xffFB6666),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text("Loading..."),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
