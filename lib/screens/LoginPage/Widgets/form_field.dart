import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({
    Key key,
    @required this.textController,
    @required this.lableText,
    @required this.icon,
    @required this.keyboard,
  }) : super(key: key);

  final TextEditingController textController;
  final String lableText;
  final IconData icon;
  final TextInputType keyboard;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      obscureText: true,
      keyboardType: TextInputType.name,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.black,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gapPadding: 10.0,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.teal,
            width: 20.0,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gapPadding: 10.0,
        ),
        counterText: "",
        labelText: lableText,
        labelStyle: TextStyle(
          color: Colors.orange,
          letterSpacing: 5.0,
        ),
        prefixIcon: Icon(
          icon,
          size: 25.0,
          color: Colors.orange,
        ),
      ),
    );
  }
}
