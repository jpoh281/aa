import 'package:aa/models/models.dart';
import 'package:aa/ui/components/components.dart';
import 'package:flutter/material.dart';



class Avatar extends StatelessWidget {

  final UserModel user;

   Avatar(this.user);

  @override
  Widget build(BuildContext context) {
    if((user?.photoUrl == '') || (user?.photoUrl == null))
    return LogoGraphicHeader();
    return Hero(tag: 'User Avatar Image', child: CircleAvatar(
      foregroundColor: Colors.blue,
      backgroundColor: Colors.white,
      radius:70.0,
      child:ClipOval(
        child:Image.network(user?.photoUrl,
        fit: BoxFit.cover,
        width:120.0,
        height:120.0)
      )
    ));
  }
}