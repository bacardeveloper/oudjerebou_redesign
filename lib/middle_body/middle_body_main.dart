// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:oudjerebou_redisgn/style/colors.dart';

class MiddleBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthContext = MediaQuery.of(context).size.width;
    double widthCompare = 1300.0;
    bool testSize = widthContext > widthCompare;

    return Padding(
      padding: EdgeInsets.only(
        top: 50.0,
        left: 50.0,
        right: 50.0,
      ),
      child: (testSize)
          ? SizedBox(
              width: widthContext - 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textHomeAndButton(
                      sizeWithout: widthContext, width: widthContext / 2.3),
                  imageCover(width: widthContext / 2.3)
                ],
              ),
            )
          : SizedBox(
              width: widthContext - 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  imageCover(width: widthContext / 2),
                  textHomeAndButton(
                      sizeWithout: widthContext, width: widthContext / 1.3),
                ],
              ),
            ),
    );
  }

  Widget textHomeAndButton({sizeWithout, width}) {
    String titreHomePage = "Oudjerebou,\nosez entreprendre";
    String textHomePage =
        "Nous permettons aux porteurs de projet de tester et de valider en toute sécurité leurs idées en bénéficiant d'un accompagnement sur mesure.";
    bool testSizeText = sizeWithout < 1000;
    return Container(
      color: Colors.transparent,
      width: width,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              titreHomePage,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: (testSizeText) ? 45 : 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 20.0,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              textHomePage,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: (testSizeText) ? 20.0 : 35.0,
                fontWeight: FontWeight.normal,
                color: colorButton,
              ),
            ),
          ),
          Container(
            height: 50.0,
          ),
          Row(
            children: [
              btnContactHome(),
            ],
          )
        ],
      ),
    );
  }

  Widget btnContactHome() {
    double widthBdr = 1.5;
    double paddingArg = 20.0;
    return Material(
      child: InkWell(
        child: SizedBox(
          height: 40.0,
          width: 170.0,
          child: Container(
            decoration: BoxDecoration(
              color: colorButton,
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
                  "Discutons-en",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
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

  Widget imageCover({width, sizeWithout}) {
    return SizedBox(
      width: width,
      child: Image.asset('assets/accueil_oudjerebou.png'),
    );
  }
}
