import 'package:aa/controller/auth_controller.dart';
import 'package:aa/localizations.dart';
import 'package:aa/ui/components/avatar.dart';
import 'package:aa/ui/components/components.dart';
import 'package:aa/ui/settings_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeUI extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (controller) => controller?.firebaseUser?.value?.uid == null
      ? Center(child: CircularProgressIndicator(),)
      : Scaffold( 
        appBar: AppBar(
                title: Text(labels?.home?.title),
                actions: [
                  IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        Get.to(SettingsUI());
                      }),
                ],
              ),
        body: SingleChildScrollView(
          child: Center(
                      child: Column(
              children: <Widget>[
                SizedBox(height: 120,),
                Avatar(controller.firestoreUser.value),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FormVerticalSpace(),
                    Text(labels.home.uidLabel + ': ' + controller.firestoreUser.value.uid, style: TextStyle(fontSize:16),),
                    FormVerticalSpace(),
                     Text(labels.home.nameLabel + ': ' + controller.firestoreUser.value.name, style: TextStyle(fontSize:16),),
                    FormVerticalSpace(),
                     Text(labels.home.emailLabel + ': ' + controller.firestoreUser.value.email, style: TextStyle(fontSize:16),),
                    FormVerticalSpace(),
                     Text(labels.home.adminUserLabel + ': ' + controller.admin.value.toString(), style: TextStyle(fontSize:16),),
                  ],
                )
              ],
            ),
          ),
        ),),
    );
  }
}