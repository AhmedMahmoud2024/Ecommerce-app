import 'package:ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widgets/button/basic_app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/helpers/navigator/app_navigator.dart';
import '../../../../../data/models/user_creation_req.dart';
import '../../gender_and_age_selection/pages/gender_and_age_selection.dart';

class SignUpContinueButtonWidget extends StatelessWidget{
  SignUpContinueButtonWidget({super.key});
  final TextEditingController _firstNameCon = TextEditingController();
  final TextEditingController _lastNameCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  _continueButtonWidget(context);
  }

  Widget _continueButtonWidget(BuildContext context) {
    return BasicAppButton(
     onPressed : (){
       AppNavigator.push(
           context,
           GenderAndAgeSelectionPage(
             userCreationReq: UserCreationReq(
                 firstName: _firstNameCon.text,
                 email: _emailCon.text,
                 lastName: _lastNameCon.text,
                 password: _passwordCon.text
             ),
           )
       );
     },
      title: "Continue",
    );
  }
  }