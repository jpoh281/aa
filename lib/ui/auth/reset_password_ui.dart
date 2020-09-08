import 'package:aa/controller/auth_controller.dart';
import 'package:aa/helpers/helpers.dart';
import 'package:aa/localizations.dart';
import 'package:aa/ui/auth/auth.dart';
import 'package:aa/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordUI extends StatelessWidget {
  final AuthController authController = AuthController.to;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    
    return Scaffold(
      appBar: appBar(context),
      body: Form(
        key:_formKey,
        child: Padding(
          padding : const EdgeInsets.symmetric(horizontal : 24.0),
          child : Center(
            child: SingleChildScrollView(
              child: Column(
                children:<Widget>[
                  LogoGraphicHeader(),
                  SizedBox(height : 48.0),
                  FormInputFieldWithIcon(
                    controller:authController.emailController,
                    iconPrefix : Icons.email,
                    labelText : labels?.auth?.emailFormField,
                    validator : Validator(labels).email,
                    keyboardType : TextInputType.emailAddress,
                    onChanged: (value) => null,
                    onSaved: (value) => authController.emailController.text = value,
                  ),
                  FormVerticalSpace(),
                  PrimaryButton(
                    labelText: labels?.auth?.resetPasswordButton,
                    onPressed: ()async{
                      if(_formKey.currentState.validate()){
                        await authController.sendPasswordResetEmail(context);
                      }
                    }),
                  FormVerticalSpace(),
                  signInLink(context),
                ]
              )
            )
          )
        )
      ),

    );
  }

  appBar(BuildContext context){
    final labels = AppLocalizations.of(context);
    if((authController.emailController.text == '') || (authController.emailController.text == null)){
      return null;
    }
    return AppBar(title: Text(labels?.auth?.resetPasswordTitle),);
  }

  signInLink(BuildContext context){
    final labels = AppLocalizations.of(context);
    if((authController.emailController.text == '') || (authController.emailController.text == null)){
      return LabelButton(
        labelText: labels?.auth?.signInonResetPasswordLabelButton,
        onPressed: ()=> Get.offAll(SignInUI()),
      );
    }
    return Container(width : 0, height : 0);
  }

}