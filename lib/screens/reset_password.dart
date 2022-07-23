import 'package:flutter/material.dart';
import 'package:login_app/screens/login.dart';
import 'package:login_app/theme.dart';
import 'package:login_app/widgets/primary_button.dart';
import 'package:login_app/widgets/reset_form.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 200,
          ),
          Text(
            'Reset Password',
            style: titleText,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Please enter your email address',
            style: subTitle.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          const ResetForm(),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogInScreen(),
                ),
              );
            },
            child: const PrimaryButton(buttonText: 'Reset Password'),
          ),
        ]),
      ),
    );
  }
}
