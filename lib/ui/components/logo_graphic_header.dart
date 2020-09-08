import 'package:aa/controller/controllers.dart';
import 'package:flutter/material.dart';

class LogoGraphicHeader extends StatelessWidget {
  LogoGraphicHeader();
  final ThemeController themeController = ThemeController.to;

  @override
  Widget build(BuildContext context) {
    String _imageLogo = 'assets/images/default.png';
    if(themeController.isDarkModeOn == true){
      String _imageLogo = 'assets/images/defaultDark.png';
    }
    return Hero(tag: 'User Avatar Image', child: CircleAvatar(
      foregroundColor: Colors.blue,
      backgroundColor: Colors.white,
      radius:60.0,
      child:ClipOval(
        child:Image.asset(_imageLogo,
        fit: BoxFit.cover,
        width:120.0,
        height:120.0)
      )
    ));
  }
}