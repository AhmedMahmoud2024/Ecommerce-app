
import 'package:ecommerce_app/presentation/auth/pages/signin/widgets/email_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/sign_in_text_widget.dart';

class SigninPage extends StatelessWidget{
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
  body: Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 80
    ),
    child: Column(
      children: [
       SigninTextWidget(),
      SizedBox(height: 20,),
        EmailFieldWidget()
      ],
    ),
  ),
    );
  }

}