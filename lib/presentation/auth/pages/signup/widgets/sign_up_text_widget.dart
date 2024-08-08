 import 'package:flutter/cupertino.dart';

class SignupTextWidget extends StatelessWidget{
  const SignupTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
  return  signupText(context);
  }

}
 Widget signupText (BuildContext context){
  return const Text(
    "Sign Up",
    style: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold
    ),
  );
 }