import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sheet_localization/flutter_sheet_localization.dart';

part 'localization.g.dart';

@SheetLocalization("1-JCQFm6thT3nGeNJndGHf7UbvbaRHLLjWToul0BmeOw","0",1) // <- DOCID, SHEETID
class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => AppLocalizations.languages.containsKey(locale);

  
  @override
  Future<AppLocalizations> load(Locale locale) => SynchronousFuture<AppLocalizations>(AppLocalizations(locale));

 @override
  bool shouldReload(LocalizationsDelegate old) => false;
}