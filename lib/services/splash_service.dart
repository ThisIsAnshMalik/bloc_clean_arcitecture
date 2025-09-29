import 'dart:async';

import 'package:bloc_clean_arcitecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashService {
  void isLogin(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        RoutesName.loginScreen,
        (route) => false,
      );
    });
  }
}
