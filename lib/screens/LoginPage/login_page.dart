import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pranava/screens/LoginPage/Widgets/image_bg.dart';
import 'package:pranava/screens/LoginPage/Widgets/text_field_widget.dart';

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldWidget(
                  emailController: emailController,
                  passwordController: passwordController,
                  nameController: nameController,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // LoadingIndicator(
                      //   isLoading: _isLoading,
                      // ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.orange,
                          fontFamily: 'Blauer',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 60.0,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(22.0),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            color: Colors.white,
                            focusColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            icon: Icon(FontAwesomeIcons.arrowRight),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
