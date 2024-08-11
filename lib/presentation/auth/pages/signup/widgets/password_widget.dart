import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatelessWidget{
   PasswordFieldWidget({super.key});
   final TextEditingController _passwordCon =  TextEditingController();

   @override
  Widget build(BuildContext context) {
    return  _passwordFieldWidget(context);
  }
   Widget _passwordFieldWidget (BuildContext context){
     return  TextField(
       controller: _passwordCon,
       decoration: const InputDecoration(
           hintText: 'Password'
       ),
     );
   }
}
