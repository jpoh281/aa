import 'package:aa/constants/globals.dart';
import 'package:aa/localization.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:ui' as ui;

class LanguageController extends GetxController {
  static LanguageController get to => Get.find();
  final language = "".obs;
  final store = GetStorage();

  String get currentLanguage => language.value;

  @override
  void onReady() async {
    // TODO: implement onReady
    setInitialLocalLanguage();
    super.onInit();
  }

  /// 장치 설정에 따라 언어 검색 및 설정
  setInitialLocalLanguage(){
    if((currentLanguageStore.value == '') || (currentLanguageStore.value == null)){
      String _deviceLanguage = ui.window.locale.toString();
      _deviceLanguage = _deviceLanguage.substring(0, 2); // 처음부터 2개의 단어만 받아옴
      print(ui.window.locale.toString());
      updateLanguage(_deviceLanguage);
    }
  }
/// gets the language locale app is set to
 Locale get getLocale{
    if((currentLanguageStore.value == '') || (currentLanguageStore.value == null)){
      language.value = Globals.defaultLanguage;
      updateLanguage(Globals.defaultLanguage);
    }
     // gets the default language key (from the translation language system)
    Locale _updateLocal = AppLocalizations.languages.keys.first;
     // looks for matching language key stored and sets to it
    AppLocalizations.languages.keys.forEach((locale) {
      if(locale.languageCode == currentLanguage){
        _updateLocal = locale;
      }
     });
     return _updateLocal;
 } 

  /// 현재 저장된 언어 가져오기
  RxString get currentLanguageStore {
    language.value = store.read('language');
    return language;
  }

  /// 업데이트된 언어 저장
  Future<void> updateLanguage(String value) async{
    language.value = value;
    await store.write('language', value);
    update();
  }
}