// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:oudjerebou_redisgn/header/menu_header.dart';

class HeaderMain extends StatelessWidget {
  EdgeInsets paddingLeftRight = EdgeInsets.fromLTRB(50, 0, 50, 0);
  double positionFixed = 0.0;

  @override
  Widget build(BuildContext context) {
    double widthSizeCtxt = MediaQuery.of(context).size.width;

    return Positioned(
      left: positionFixed,
      right: positionFixed,
      top: positionFixed,
      child: headerPadding(widthSizeCtxt),
    );
  }

  Widget headerPadding(double widthContext) {
    return Padding(
      padding: paddingLeftRight,
      child: bodyHeader(widthContext),
    );
  }

  Widget bodyHeader(double widthContext) {
    return SizedBox(
      height: 70.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          logo(
            widthContext,
          ),
          MenuHeader(),
        ],
      ),
    );
  }

  Widget logo(double widthContext) {
    if (widthContext < 700) {
      return SizedBox(
        width: widthContext / 4.5,
        child: Image.asset('assets/logo_oudjerebou.jpg'),
      );
    } else {
      return SizedBox(
        width: 200,
        child: Image.asset('assets/logo_oudjerebou.jpg'),
      );
    }
  }
}
