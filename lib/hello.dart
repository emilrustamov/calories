import 'package:callories/global.dart';
import 'package:callories/widgets/button.dart';
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
         Button(context, w, Auth(), "Начать")
        ],
      ),
    );
  }
}
