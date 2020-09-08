import 'package:aa/controller/controllers.dart';
import 'package:aa/helpers/helpers.dart';
import 'package:aa/ui/auth/auth.dart';
import 'package:aa/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:aa/localizations.dart';
import 'package:get/get.dart';



class SignInUI extends StatelessWidget {
  final AuthController authController = AuthController.to;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal : 24.0),
          child: Center(
            child: SingleChildScrollView(
              child : Column(
                children : <Widget>[
                  LogoGraphicHeader(),
                  SizedBox(height:48.0),
                  FormInputFieldWithIcon(
                    controller: authController.emailController,
                    iconPrefix : Icons.email,
                    labelText:labels?.auth?.emailFormField,
                    validator: Validator(labels).email,
                    keyboardType : TextInputType.emailAddress,
                    onChanged: (value)=>null,
                    onSaved:(value)=>authController.emailController.text = value,
                  ),
                  FormVerticalSpace(),
                  FormInputFieldWithIcon(
                    controller: authController.passwordController,
                    iconPrefix: Icons.lock,
                    labelText: labels?.auth?.passwordFormField,
                    validator:Validator(labels).password,
                    obscureText : true,
                    onChanged: (value)=>null,
                    onSaved:(value)=>authController.passwordController.text = value,
                    maxLines :1,
                  ),
                  FormVerticalSpace(),
                  PrimaryButton(
                    labelText: labels?.auth?.signInButton,
                    onPressed: ()async {
                      print('asd');
                      if(_formKey.currentState.validate()){
                        authController.signInWithEmailAndPassword(context);
                      }
                    }
                  ),
                  FormVerticalSpace(),
                  LabelButton(
                    labelText: labels?.auth?.resetPasswordLabelButton,
                    onPressed:()=>Get.to(ResetPasswordUI()),
                  ),
                  LabelButton(
                    labelText: labels?.auth?.signUpLabelButton,
                    onPressed:()=>Get.to(SignUpUI())
                  )
                ]
              )
            ),
          ),
        ),
      ),

    );
  }
}