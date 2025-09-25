import 'package:bloc_clean_arcitecture/config/components/internet_exception_widget.dart';
import 'package:bloc_clean_arcitecture/config/components/loading_widget.dart';
import 'package:bloc_clean_arcitecture/config/components/rounde_button.dart';
import 'package:bloc_clean_arcitecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Splash Screen")],
        ),
      ),
    );
  }
}
