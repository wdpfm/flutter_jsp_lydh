import 'package:flutter/material.dart';

class CustomRouter extends PageRouteBuilder {
  final Widget widget;

  CustomRouter(this.widget)
      : super(
            transitionDuration: Duration(
              seconds: 2,
            ),
            pageBuilder: (
              BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
            ) {
              return widget;
            },
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
              Widget child,
            ) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(-1.0, 0.0),
                  end: Offset(0.0, 0.0)
                ).animate(
                  CurvedAnimation(
                      parent: animation1,
                      curve: Curves.linearToEaseOut,
                  )
                ),
                child: child,
              ) ;

              //旋转缩放
//              return RotationTransition(
//                turns: Tween(begin: 0.0, end: 1.0).animate(
//                  CurvedAnimation(
//                      parent: animation1, curve: Curves.fastOutSlowIn),
//                ),
//                child: ScaleTransition(
//                  scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                      parent: animation1, curve: Curves.fastOutSlowIn)),
//                  child: child,
//                ),
//              );

              //缩放的动画效果
//              return ScaleTransition(
//                scale: Tween(begin: 0.0,end: 1.0).animate(
//                  CurvedAnimation(parent: animation1,
//                      curve: Curves.fastOutSlowIn)
//                ),
//                child: child,
//              );

              //渐隐渐现的动画效果
//              return FadeTransition(
//                opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                  parent: animation1,
//                  curve: Curves.fastOutSlowIn,
//                )),
//                child: child,
//              );
            });
}
