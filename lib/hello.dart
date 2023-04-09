import 'package:callories/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'auth.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Stack(
              children: <Widget>[
                Container(
                  height: h* 0.5,
                  width: w * 1,
                  decoration: BoxDecoration(
                    color: lightGreen,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.elliptical(150, 100),
                      bottomRight: Radius.elliptical(150, 100),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: w * 0.23,
                  child: SvgPicture.asset("images/hello.svg"),
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Управляй своим \n питанием с легкостью!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 25, color: black),
                ),
              ),
              Text(
                "Точный подсчет калорий с \n нашим приложением.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 16, color: black),
              ),
            ],
          ),
         Padding(
            padding: const EdgeInsets.only(top:120),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Auth()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: green,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                width: w * 0.7,
                height: 50,
                alignment: Alignment.center,
                child: const Text(
                  "Начать",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
