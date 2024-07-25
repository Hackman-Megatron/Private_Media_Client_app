import 'package:app_user/classes/colors_provider.dart';
import 'package:flutter/cupertino.dart';

class SignsButtons extends StatelessWidget {
  final Function() onTap;
  final String signText;
  const SignsButtons({super.key,
    required this.onTap,
    required this.signText
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: ColorsProvider.primaryColor3,
        height: 75,
        child: Center(
          child: Text(signText,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: ColorsProvider.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
