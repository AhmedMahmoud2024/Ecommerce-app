import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastNameWidget extends StatelessWidget{
  const LastNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  _lastNameFieldWidget(context);
  }

}
Widget _lastNameFieldWidget (BuildContext context){
  return const TextField(
    decoration: const InputDecoration(
        hintText: 'Last Name'
    ),
  );
}