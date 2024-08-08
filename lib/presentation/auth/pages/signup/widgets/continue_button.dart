import 'package:ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widgets/button/basic_app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContinueButtonWidget extends StatelessWidget{
  const ContinueButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  _continueButtonWidget(context);
  }

  Widget _continueButtonWidget(BuildContext context) {
    return BasicAppButton(
     onPressed : (){

     },
      title: "Continue",
    );
  }
  }