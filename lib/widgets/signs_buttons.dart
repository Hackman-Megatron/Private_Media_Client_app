import 'package:flutter/cupertino.dart';
import '../classes/colors_provider.dart';

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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorsProvider.secondaryColor1,
        ),
        height: 75,
        child: Center(
          child: Text(signText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorsProvider.primaryColor1,
            ),
          ),
        ),
      ),
    );
  }
}
