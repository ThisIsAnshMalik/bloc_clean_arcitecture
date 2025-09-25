import 'dart:io';

import 'package:bloc_clean_arcitecture/config/color/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final double size;
  const LoadingWidget({super.key, this.size = 60});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Platform.isAndroid
          ? CircularProgressIndicator(color: AppColors.loadingColor)
          : CupertinoActivityIndicator(color: AppColors.loadingColor),
    );
  }
}
