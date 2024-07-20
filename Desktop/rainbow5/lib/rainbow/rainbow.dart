import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rainbow/rainbow/help.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'home.dart';
import 'myPage.dart';
import 'whatIsPC.dart';
import 'mainPage.dart';
import '../main.dart';

Color rainbowPrimaryColor = Color.fromARGB(255, 38, 103, 240);

class Rainbow extends StatefulWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  _Rainbow createState() => _Rainbow();
}

class _Rainbow extends State<Rainbow> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD9D9D9),
        iconTheme: IconThemeData(color: Colors.black),
        title: Image.asset(
          'assets/splash.png',
          height: 40,
        ),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: currentIndex, // index 순서에 해당하는 child를 맨 위에 보여줌
        children: [
          Home(),
          MainPage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // 현재 보여주는 탭
        onTap: (newIndex) {
          print("selected newIndex : $newIndex");
          // 다른 페이지로 이동
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: Colors.white, // 선택된 아이콘 색상
        unselectedItemColor: Colors.grey, // 선택되지 않은 아이콘 색상
        showSelectedLabels: true, // 선택된 항목 label 숨기기
        showUnselectedLabels: true, // 선택되지 않은 항목 label 숨기기
        type: BottomNavigationBarType.fixed, // 선택시 아이콘 움직이지 않기
        backgroundColor: Color(0xFF646464),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/splash.png',
                height: 26,
              ),
              label: "측정하기"),
          BottomNavigationBarItem(icon: Image.asset(
                'assets/account.png',
                height: 24,
              ), label: "마이페이지"),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  DrawerHeader(
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 36,
                              backgroundColor: Colors.white,
                              child: Image.network(
                                "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                                width: 40,
                              ),
                            ),
                          ),
                          Text(
                            nickName,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "내 퍼스널컬러 : $cur_pc_type",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => WhatIsPC()))),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "퍼스널컬러란?",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Help()))),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "도움말",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                  bottom: 0,
                  child: IconButton(
                    icon: Icon(
                      Icons.exit_to_app,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                "정말로 종료하시겠습니까?",
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "취소",
                                    style:
                                        TextStyle(color: rainbowPrimaryColor),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    SystemNavigator.pop();
                                  },
                                  child: Text(
                                    "종료",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
