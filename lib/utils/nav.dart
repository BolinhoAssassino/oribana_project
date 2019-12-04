import 'package:flutter/material.dart';

Future push(BuildContext context, Widget page) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));
}

Future pushReplacement(BuildContext context, Widget page) {
  Navigator.push(context, SlideRightRoute(page));
}
class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;
  SlideRightRoute(this.widget)
      : super(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return widget;
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return new SlideTransition(
          position: new Tween<Offset>(
            begin: const Offset(1.0, 0.0,),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      }
  );
}