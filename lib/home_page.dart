// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isAccessibilityClicked = false;
  bool isTimerClicked = false;
  bool isAndroidClicked = false;
  bool isiPhoneClicked = false;

  final accessibilitySnackBar =
      SnackBar(content: const Text("Unete a un club con otras personas"));
  final timerSnackBar =
      SnackBar(content: const Text("Cuenta regresiva para el evento: 31 días"));
  final androidSnackBar =
      SnackBar(content: const Text("Llama al número 4155550198"));
  final iPhoneSnackBar =
      SnackBar(content: const Text("Llama al celular 3317865113"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Mc Flutter')),
        body: Container(
          child: Column(children: [
            Padding(
                padding: EdgeInsets.only(left: 45, top: 10, right: 35),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 60,
                    ),
                    Column(children: [
                      _addText(22, "Flutter McFlutter"),
                      _addText(16, "Experienced App Developer")
                    ])
                  ],
                )),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                  padding: EdgeInsets.only(left: 15, top: 7, bottom: 7),
                  child: _addText(16, "123 Main Street")),
              Padding(
                padding: EdgeInsets.only(right: 15, top: 7, bottom: 7),
                child: _addText(16, "(415) 555-0198"),
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      _resetAll();
                      isAccessibilityClicked = !isAccessibilityClicked;
                      setState(() {});
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(accessibilitySnackBar);
                    },
                    icon: Icon(Icons.accessibility),
                    color:
                        isAccessibilityClicked ? Colors.indigo : Colors.black),
                IconButton(
                    onPressed: () {
                      _resetAll();
                      isTimerClicked = !isTimerClicked;
                      setState(() {});
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(timerSnackBar);
                    },
                    icon: Icon(Icons.timer),
                    color: isTimerClicked ? Colors.indigo : Colors.black),
                IconButton(
                    onPressed: () {
                      _resetAll();
                      isAndroidClicked = !isAndroidClicked;
                      setState(() {});
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(androidSnackBar);
                    },
                    icon: Icon(Icons.phone_android_rounded),
                    color: isAndroidClicked ? Colors.indigo : Colors.black),
                IconButton(
                    onPressed: () {
                      _resetAll();
                      isiPhoneClicked = !isiPhoneClicked;
                      setState(() {});
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(iPhoneSnackBar);
                    },
                    icon: Icon(Icons.phone_iphone_rounded),
                    color: isiPhoneClicked ? Colors.indigo : Colors.black),
              ],
            )
          ]),
          margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
          decoration: BoxDecoration(border: Border.all(color: Colors.black87)),
          height: 165,
        ));
  }

  Text _addText(double fontSize, String text) =>
      Text(text, style: TextStyle(fontSize: fontSize));

  void _resetAll() {
    isAccessibilityClicked = false;
    isAndroidClicked = false;
    isTimerClicked = false;
    isiPhoneClicked = false;
  }
}
