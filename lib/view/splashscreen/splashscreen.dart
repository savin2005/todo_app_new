import 'package:flutter/material.dart';

class SplashscreenView extends StatelessWidget {
  const SplashscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/chatlogo.png",
              width: MediaQuery.of(context).size.width / 8,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 20,
            ),
            Text("Make A Chat")
          ],
        ),
      ),
    );
  }
}
