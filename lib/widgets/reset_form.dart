import 'package:flutter/material.dart';
import 'package:login_app/theme.dart';

class ResetForm extends StatelessWidget {
  const ResetForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Email',
            hintStyle: TextStyle(color: kTextFieldColor),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor))),
      ),
    );
  }
}
