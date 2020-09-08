import 'package:aa/constants/constants.dart';
import 'package:aa/controller/controllers.dart';
import 'package:aa/localizations.dart';
import 'package:aa/models/models.dart';
import 'package:aa/ui/auth/auth.dart';
import 'package:aa/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(labels.settings.title),
      ),
      body: _buildLayoutSection(context),
    );
  }

  Widget _buildLayoutSection(BuildContext context){
     final labels = AppLocalizations.of(context);

     return ListView(
       children: <Widget>[
          languageListTile(context),
          themeListTile(context),
          ListTile(
            title: Text(labels.settings.updateProfile),
            trailing: RaisedButton(
              onPressed: ()async{
                Get.to(UpdateProfileUI());
              },
              child: Text(labels.settings.updateProfile),
            ),
          ),
          ListTile(
            title: Text(labels.settings.signOut),
            trailing: RaisedButton(onPressed: (){
              AuthController.to.signOut();
            },
            child: Text(labels.settings.signOut),),
          )
       ],
     );
  }


  languageListTile(BuildContext context){
    final labels = AppLocalizations.of(context);

    return GetBuilder<LanguageController>(builder: (contoller) => ListTile(
      title: Text(labels.settings.language),
      trailing: DropdownPicker(
        menuOptions: Globals.languageOptions,
        selectOption: contoller.currentLanguage,
        onChanged: (value) async {
          await contoller.updateLanguage(value);
          Get.forceAppUpdate();
        },
      ),
    ));
  }

  themeListTile(BuildContext context){
    final labels = AppLocalizations.of(context);
    final List<MenuOptionModel> themeOptions = [
      MenuOptionModel(
        key:"system",
        value: labels.settings.system,
        icon: Icons.brightness_4
      ),
       MenuOptionModel(
        key:"light",
        value: labels.settings.light,
        icon: Icons.brightness_low
      ),
       MenuOptionModel(
        key:"dark",
        value: labels.settings.dark,
        icon: Icons.brightness_3
      ),
    ];
    return GetBuilder<ThemeController>(
      builder: (controller)=> ListTile(
        title: Text(labels.settings.theme),
        trailing: SegmentedSelector(
          selectOption: controller.currentTheme,
          menuOptions: themeOptions,
          onvalueChanged: (value){
            controller.setThemeMode(value);
          },
        ),
      ),
    );
  }
}