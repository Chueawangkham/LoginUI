import 'package:flutter/material.dart';
import 'package:login_app/theme.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        BuildButton(
          iconImage:
              Image(height: 30, image: AssetImage('images/facebook.png')),
          textButton: 'Facebook',
        ),
        BuildButton(
          iconImage: Image(
            height: 30,
            image: AssetImage('images/google.png'),
          ),
          textButton: 'Gmail',
        ),
      ],
    );
  }
}

class BuildButton extends StatelessWidget {
  final Image iconImage;
  final String textButton;
  // ignore: use_key_in_widget_constructors
  const BuildButton({required this.iconImage, required this.textButton});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.06,
      width: mediaQuery.width * 0.36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kWhiteColor)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        iconImage,
        const SizedBox(
          width: 5,
        ),
        Text(textButton),
      ]),
    );
  }
}
