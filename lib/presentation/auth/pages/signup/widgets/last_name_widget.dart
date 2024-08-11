import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastNameWidget extends StatelessWidget{
   LastNameWidget({super.key});

   final TextEditingController _lastNameCon =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  _lastNameFieldWidget(context);
  }
   Widget _lastNameFieldWidget (BuildContext context){
     return  TextField(
       controller:_lastNameCon ,
       decoration: const InputDecoration(
           hintText: 'Last Name'
       ),
     );
   }
}
