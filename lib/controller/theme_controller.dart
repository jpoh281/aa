
// https://gist.github.com/RodBr/37310335c6639f486bb3c8a628052405
//https://medium.com/swlh/flutter-dynamic-themes-in-3-lines-c3b375f292e3

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class ThemeController extends GetxController {
  static ThemeController get to => Get.find();
  final theme = "system".obs;
  final store = GetStorage();
  ThemeMode _themeMode;

  ThemeMode get themeMode => _themeMode;
  String get currentTheme => theme.value;

  Future<void> setThemeMode (String value) async {
    theme.value = value;
    _themeMode = getThemeModeFromString(value);
    Get.changeThemeMode(_themeMode);
    await store.write('theme', value);
    update();
  }

  ThemeMode getThemeModeFromString(String themeString){
    ThemeMode _setThemeMode = ThemeMode.system;
    if(themeString == 'light')
      _setThemeMode = ThemeMode.light;
    
    if(themeString == 'dark')
      _setThemeMode = ThemeMode.dark;

    return _setThemeMode;
  }

  getThemeModeFromStore() async{
    String _themeString = await store.read('theme') ?? 'system';
    setThemeMode(_themeString);
  }

  // 유저가 다크모드를 선택했는지 시스템으로 인한 다크모드인지 체크
  bool get isDarkModeOn{
    if(currentTheme == 'system'){
      if(WidgetsBinding.instance.window.platformBrightness == Brightness.dark){
        return true;
      }
    }
    if(currentTheme == 'dark'){
      return true;
    }
    return false;
  }
}