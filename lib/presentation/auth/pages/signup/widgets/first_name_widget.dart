import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstNameWidget extends StatelessWidget{
  const FirstNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  _firstNameFieldWidget(context);
  }

}
Widget _firstNameFieldWidget (BuildContext context){
  return const TextField(
    decoration: const InputDecoration(
        hintText: 'First Name'
    ),
  );
}