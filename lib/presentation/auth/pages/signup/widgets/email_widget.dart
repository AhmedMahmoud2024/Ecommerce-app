import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailFieldWidget extends StatelessWidget{
  EmailFieldWidget({super.key});

  final TextEditingController _emailCon =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  _emailFieldWidget(context);
  }

  Widget _emailFieldWidget (BuildContext context){
    return  TextField(
      controller:_emailCon ,
      decoration: const InputDecoration(
          hintText: 'Email Address'
      ),
    );
  }
}
