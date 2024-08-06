 import 'package:flutter/cupertino.dart';

class SigninTextWidget extends StatelessWidget{
  const SigninTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
  return  signinText(context);
  }

}
 Widget signinText (BuildContext context){
  return const Text(
    "Sign In",
    style: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold
    ),
  );
 }