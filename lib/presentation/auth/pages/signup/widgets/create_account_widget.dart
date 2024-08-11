import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../common/helpers/navigator/app_navigator.dart';
import '../../signin/pages/signin.dart';
import '../../signup/pages/signup.dart';

class SigninCreateAccountWidget extends StatelessWidget{
  const SigninCreateAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  _createAccountWidget(context);
  }

  Widget _createAccountWidget(BuildContext context) {
    return RichText(
     text: TextSpan(
       children: [
         const TextSpan(
           text: "Do you have an account?"
         ),
         TextSpan(
           text: "Signin",
           recognizer: TapGestureRecognizer()..onTap =() {
         AppNavigator.push(context, SigninPage());
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