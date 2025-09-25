import 'dart:developer';

import 'package:bloc_clean_arcitecture/config/routes/routes_name.dart';
import 'package:bloc_clean_arcitecture/view/view.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        log("Going to Splash Screen");
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case RoutesName.loginScreen:
        log("Going to Login Screen");
        return MaterialPageRoute(builder: (context) => const LoginScreen());

      case RoutesName.homeScreen:
        log("Going to Home Screen");
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(body: Center(child: Text("Route Not Found")));
          },
        );
    }
  }
}
