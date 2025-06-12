import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shubham_test/user_authentication/wrap.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Wrapper()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: SizedBox(
          // width: 200, // Adjust size as needed
          // height: 200, // Adjust size as needed
          child: Lottie.asset('asset/kuldeep.json'),
        ),
      ),
    );
  }
}
