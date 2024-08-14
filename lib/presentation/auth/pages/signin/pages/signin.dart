
import 'package:ecommerce_app/presentation/auth/pages/signin/widgets/continue_button.dart';
import 'package:ecommerce_app/presentation/auth/pages/signin/widgets/create_account_widget.dart';
import 'package:ecommerce_app/presentation/auth/pages/signin/widgets/email_field_widget.dart';
import 'package:ecommerce_app/presentation/auth/pages/signup/widgets/password_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/sign_in_text_widget.dart';

class SigninPage extends StatelessWidget{
   SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  body: Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 80
    ),
    child: Column(
      children: [
       SigninTextWidget(),
       SizedBox(height: 20,),
        EmailFieldWidget(),
        SizedBox(height: 20,),
        // PasswordFieldWidget(),
        // SizedBox(height: 20,),
        SigninContinueButtonWidget(),
        SizedBox(height: 20,),
        CreateAccountWidget()
      ],
    ),
  ),
    );
  }

}