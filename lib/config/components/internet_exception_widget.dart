import 'package:bloc_clean_arcitecture/config/color/app_colors.dart';
import 'package:bloc_clean_arcitecture/config/components/rounde_button.dart';
import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatelessWidget {
  final VoidCallback onTap;
  const InternetExceptionWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),
        const Icon(Icons.cloud_off, color: AppColors.exceptionColor, size: 50),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Center(
            child: Text(
              "We are unable to show results.\nPlease check your data\nconnection",
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.displayMedium!.copyWith(fontSize: 20),
            ),
          ),
        ),
        SizedBox(height: 100),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: RoundeButton(onTap: onTap, title: "Retry"),
        ),
      ],
    );
  }
}
