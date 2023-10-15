// @dart=2.17
import 'package:flutter/material.dart';
import 'package:rainbow/rainbow/calculatePC.dart';
import 'package:rainbow/rainbow/rainbow.dart';
import 'package:rainbow/rainbow/virtualMakeUp.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9), 
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Positioned(
              top: 144,
              child: Image.asset(
                'assets/splash.png',
                width: 157,
                height: 150,
              ),
            ),
            Positioned(
              top: 428,
              child: Column(children:[
                Container(
                  width: 360.0,
                  height: 86.0,
                  padding:
                      EdgeInsets.all(16), // Padding around the button
                  child:
                    ElevatedButton(onPressed:
                        () => Navigator.push(context, MaterialPageRoute(builder:
                            ((context) => CalculatePC())),),
                      style:ElevatedButton.styleFrom(
                        backgroundColor:
                          Color(0xFF646464)).copyWith(shape : MaterialStateProperty.all(RoundedRectangleBorder(borderRadius :
                          BorderRadius.circular(48)))),
                      child : Text('퍼스널 컬러 측정하기', style :
                        TextStyle(color :
                          Colors.white),
                       )
                    ),
                 ),
                 SizedBox(height:
                   10), // Gap between two buttons
                 Container(width:
                   360.0, height : 
                   86.0, padding :
                   EdgeInsets.all(16), // Padding around the button
                   child:ElevatedButton(onPressed:
                       () => Navigator.push(context, MaterialPageRoute(builder:
                           ((context) => VirtualMakeUp())),),
                     style:ElevatedButton.styleFrom(backgroundColor:
                         Color(0xFF646464)).copyWith(shape : MaterialStateProperty.all(RoundedRectangleBorder(borderRadius :
                          BorderRadius.circular(48)))),
                     child : Text('퍼스널 컬러 가상 메이크업', style :
                       TextStyle(color :
                         Colors.white),
                      )
                    ),
                  ),
               ]),
             )
          ],
        ),
      ),
    );
  }
}
