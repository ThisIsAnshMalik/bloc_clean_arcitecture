import 'package:bloc_clean_arcitecture/config/color/app_colors.dart';
import 'package:flutter/material.dart';

class RoundeButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const RoundeButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text(title)),
      ),
    );
  }
}
