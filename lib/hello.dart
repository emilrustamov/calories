import 'package:callories/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: 390,
                width: 400,
                decoration: BoxDecoration(
                  color: lightGreen,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(150, 100),
                    bottomRight: Radius.elliptical(150, 100),
                  ),
                ),
              ),
              Positioned( top: 100, left: width*0.23,
                child: SvgPicture.asset("images/hello.svg"),
                
              )
            ],
          ),
          Text(
            "Управляй своим \n питанием с легкостью!",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 25, color: black),
          ),
          Text(
            "Точный подсчет калорий с \n нашим приложением.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 16, color: black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => link));
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Ink(
                decoration: BoxDecoration(
                    color: green, borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: width * 0.7,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Начать",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
