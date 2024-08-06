import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailFieldWidget extends StatelessWidget{
  const EmailFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  emailFieldWidget(context);
  }

}
 Widget emailFieldWidget(BuildContext context){
  return const TextField(
    decoration: InputDecoration(
      hintText: "Enter Email"
    ),
  );
 }