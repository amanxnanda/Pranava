import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pranava/screens/LoginPage/Widgets/form_field.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key key,
    @required this.emailController,
    @required this.passwordController,
    @required this.nameController,
  }) : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 350.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FormFieldWidget(
              lableText: 'name',
              textController: nameController,
              keyboard: TextInputType.name,
              icon: FontAwesomeIcons.personBooth,
            ),
            FormFieldWidget(
              lableText: 'email',
              textController: emailController,
              keyboard: TextInputType.emailAddress,
              icon: FontAwesomeIcons.userAlt,
            ),
            FormFieldWidget(
              lableText: 'password',
              textController: passwordController,
              keyboard: TextInputType.visiblePassword,
              icon: FontAwesomeIcons.lock,
            ),
          ],
        ),
      ),
    );
  }
}
