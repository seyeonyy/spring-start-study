// @dart=2.17
import 'package:flutter/material.dart';

class WhatIsPC extends StatelessWidget {
  const WhatIsPC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350,
          height: 176,
          padding: EdgeInsets.all(16),
          child: Text(
            '퍼스널 컬러란?\n\n타고난 개인의 신체 컬러를 말하며, 봄웜톤, 여름쿨톤, 가을웜톤, 겨울쿨톤 4가지로 분류할 수 있습니다.\n\n퍼스털 컬러를 통해 자신과 조화롭게 어울려 생기가 있어 보이게 할 수 있습니다.',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height:
                  1.14, // line-height is the ratio of font-size so we set it as line-height/font-size.
              letterSpacing:
                  1 // letter-spacing in Flutter is expressed in logical pixels.
            ),
            textAlign:
                TextAlign.center // Align the text to center within its box.
          ),
        ),
      ),
    );
  }
}
