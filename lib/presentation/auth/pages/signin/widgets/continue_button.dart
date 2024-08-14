import 'package:ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widgets/button/basic_app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/helpers/navigator/app_navigator.dart';
import '../../../../../data/models/user_signin_req.dart';
import '../../enter_password/enter_password.dart';

class SigninContinueButtonWidget extends StatelessWidget{
   SigninContinueButtonWidget({super.key});

  final TextEditingController _emailCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  _continueButtonWidget(context);
  }

  Widget _continueButtonWidget(BuildContext context) {
    return BasicAppButton(
     onPressed : (){
       AppNavigator.push(
           context,
           EnterPasswordPage(
             signinReq: UserSigninReq(
               email: _emailCon.text,
             ),
           )
       );
     },
      title: "Continue",
    );
  }
  }