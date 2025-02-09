import 'package:aa/constants/constants.dart';
import 'package:aa/controller/controllers.dart';
import 'package:aa/controller/language_controller.dart';
import 'package:aa/localizations.dart';
import 'package:aa/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<AuthController>(AuthController());
  Get.put<ThemeController>(ThemeController());
  Get.put<LanguageController>(LanguageController());
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     ThemeController.to.getThemeModeFromStore();
    return GetBuilder<LanguageController>(builder: (languageController) => Loading(
     child: GetMaterialApp(
       //언어 번역 시작 --> //https://github.com/aloisdeniel/flutter_sheet_localization
       locale: languageController.getLocale, // <- 현재 언어
       localizationsDelegates: [
          const AppLocalizationsDelegate(), // <- 내 커스텀 delegate
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        
       ],
       supportedLocales: AppLocalizations.languages.keys.toList(),
       // <-- 언어 번역 끝

       debugShowCheckedModeBanner: false,

       theme: AppThemes.lightTheme,
       darkTheme: AppThemes.darkTheme,
       themeMode: ThemeMode.system,
       initialRoute: "/",
       getPages: AppRoutes.routes,
     ),
    ),);
  }
}




