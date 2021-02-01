import 'package:flutter/material.dart';
import 'package:pranava/screens/LoginPage/image_bg.dart';
import 'package:pranava/screens/LoginPage/text_field_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageBackground(),
          SafeArea(
            child: TextFieldWidget(
              emailController: emailController,
              passwordController: passwordController,
              nameController: nameController,
            ),
          ),
        ],
      ),
    );
  }
}
