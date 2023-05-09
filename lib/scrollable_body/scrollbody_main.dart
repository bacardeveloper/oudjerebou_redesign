// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:oudjerebou_redisgn/middle_body/middle_body_main.dart';

class ScrollBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 70.0,
      left: 0,
      right: 0,
      bottom: 0.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MiddleBody(),
          ],
        ),
      ),
    );
  }
}
