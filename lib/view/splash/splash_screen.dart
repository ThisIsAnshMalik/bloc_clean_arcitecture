import 'package:bloc_clean_arcitecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, RoutesName.homeScreen);
          },
          child: Text("Splash Screen"),
        ),
      ),
    );
  }
}
