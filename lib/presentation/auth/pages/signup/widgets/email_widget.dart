import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailFieldWidget extends StatelessWidget{
  const EmailFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  _emailFieldWidget(context);
  }

}
Widget _emailFieldWidget (BuildContext context){
  return const TextField(
    decoration: const InputDecoration(
        hintText: 'Email Address'
    ),
  );
}