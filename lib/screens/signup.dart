import 'package:flutter/material.dart';
import 'package:login_app/screens/login.dart';
import 'package:login_app/theme.dart';
import 'package:login_app/widgets/checkbox.dart';
import 'package:login_app/widgets/login_option.dart';
import 'package:login_app/widgets/primary_button.dart';
import 'package:login_app/widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: kDefaultPadding,
            child: Text(
              'Create Account',
              style: titleText,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: kDefaultPadding,
            child: Row(
              children: [
                Text(
                  'Already a member?',
                  style: subTitle,
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInScreen())),
                  child: Text(
                    'Log in',
                    style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: kDefaultPadding,
            child: SignUpForm(),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: kDefaultPadding,
            child: CheckBox(
              text: 'Agree to terms and conditions.',
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Padding(
            padding: kDefaultPadding,
            child: CheckBox(
              text: 'I have at least 18 years old.',
            ),
          ),
          const SizedBox(
            height: 20,
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
            child: const Padding(
              padding: kDefaultPadding,
              child: PrimaryButton(buttonText: 'Sign Up'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              '- or log in with -',
              style: subTitle.copyWith(color: kZambeziColor, fontSize: 14),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: kDefaultPadding,
            child: LoginOption(),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      )),
    );
  }
}
