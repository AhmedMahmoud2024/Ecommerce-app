
import 'package:ecommerce_app/presentation/auth/pages/signin/widgets/continue_button.dart';
import 'package:ecommerce_app/presentation/auth/pages/signin/widgets/create_account_widget.dart';
import 'package:ecommerce_app/presentation/auth/pages/signin/widgets/email_field_widget.dart';
import 'package:ecommerce_app/presentation/auth/pages/signup/widgets/create_account_widget.dart';
import 'package:ecommerce_app/presentation/auth/pages/signup/widgets/first_name_widget.dart';
import 'package:ecommerce_app/presentation/auth/pages/signup/widgets/last_name_widget.dart';
import 'package:ecommerce_app/presentation/auth/pages/signup/widgets/password_widget.dart';
import 'package:ecommerce_app/presentation/auth/pages/signup/widgets/sign_up_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/app_bar.dart';

class SignupPage extends StatelessWidget{
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: BasicAppbar(),
        body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 40
    ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SignupTextWidget(),
               SizedBox(height: 20,),
              FirstNameWidget(),
              SizedBox(height: 20,),
              LastNameWidget(),
              SizedBox(height: 20,),
              EmailFieldWidget(),
              SizedBox(height: 20,),
              PasswordFieldWidget(),
              SizedBox(height: 20,),
              ContinueButtonWidget(),
              SizedBox(height: 20,),
              SigninCreateAccountWidget()
            ],
          ),
    )
    );
  }
}