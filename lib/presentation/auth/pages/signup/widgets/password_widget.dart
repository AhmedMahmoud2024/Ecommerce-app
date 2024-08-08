import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatelessWidget{
  const PasswordFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  _passwordFieldWidget(context);
  }

}
Widget _passwordFieldWidget (BuildContext context){
  return const TextField(
    decoration: const InputDecoration(
        hintText: 'Password'
    ),
  );
}