import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstNameWidget extends StatelessWidget{
   FirstNameWidget({super.key});

  final TextEditingController _firstNameCon =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  _firstNameFieldWidget(context);
  }
   Widget _firstNameFieldWidget (BuildContext context){
     return  TextField(
       controller: _firstNameCon,
       decoration: const InputDecoration(
           hintText: 'First Name'
       ),
     );
   }
}
