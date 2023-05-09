// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:oudjerebou_redisgn/style/colors.dart';

class MenuHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthContext = MediaQuery.of(context).size.width;
    double widthCompare = 1010.0;

    if (widthContext < widthCompare) {
      return Row(
        children: [btnContact()],
      );
    } else {
      return Row(
        children: [
          Row(
            children: ListTextBtn(textButtons),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
          ),
          btnContact(),
        ],
      );
    }
  }

  Widget btnContact() {
    double widthBdr = 1.5;
    double paddingArg = 20.0;
    return Material(
      child: InkWell(
        child: SizedBox(
          height: 40.0,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: widthBdr, color: colorButton),
                left: BorderSide(width: widthBdr, color: colorButton),
                right: BorderSide(width: widthBdr, color: colorButton),
                bottom: BorderSide(width: widthBdr, color: colorButton),
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(paddingArg, 0, paddingArg, 0),
                child: Text(
                  "Je contacte",
                  style: TextStyle(
                    color: colorButton,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        onTap: () {},
      ),
    );
  }

  List textButtons = [
    "Test d'activité",
    "Nos services",
    "Qui sommes-nous",
    "Mon quartier entreprend",
    "Blog"
  ];

  Widget textBtn(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Material(
        child: InkWell(
          hoverColor: Colors.transparent,
          child: Text(
            text,
            style: TextStyle(
              color: colorButton,
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }

  List<Widget> ListTextBtn(List argText) {
    List<Widget> listWidgets = [];
    for (var arg in argText) {
      listWidgets.add(textBtn(arg));
    }
    return listWidgets;
  }

  Widget btnMenu() {
    return Material(
      child: Center(
        child: InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }

  Container btnCtn() {
    return Container();
  }
}
