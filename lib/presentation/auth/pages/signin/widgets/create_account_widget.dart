import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../common/helpers/navigator/app_navigator.dart';
import '../../signup/pages/signup.dart';

class CreateAccountWidget extends StatelessWidget{
  const CreateAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  _createAccountWidget(context);
  }

  Widget _createAccountWidget(BuildContext context) {
    return RichText(
     text: TextSpan(
       children: [
         const TextSpan(
           text: "Don't you have an account?"
         ),
         TextSpan(
           text: "Create One",
           recognizer: TapGestureRecognizer()..onTap =() {
         AppNavigator.push(context,const SignupPage());
                } ,
             style: const TextStyle(
                 fontWeight: FontWeight.bold
             )
         )
       ]
     ),
    );
  }

}