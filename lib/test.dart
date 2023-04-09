import 'package:callories/hello.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'global.dart';

class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.chevron_left_outlined,
                  color: green,
                  size: 30,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.calendar_month_outlined,
                          size: 20,
                          color: green,
                        ),
                      ),
                      TextSpan(
                          text: "06.04.2023", style: TextStyle(color: green)),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right_outlined,
                  color: green,
                  size: 30,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  blueCard(width, 'Прием'),
                  blueCard(width, "Питьевой режим"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  blueCard(width, 'Вес'),
                  blueCard(width, "не вес"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "В целом",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: green,
                            fontSize: 14),
                      ),
                      Text(
                        "0 ккал",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: darkGreen,
                            fontSize: 20),
                      ),
                      Text(
                        "из 1709ккал",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: green,
                            fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: [Text("data")],
                  ),
                ],
              ),
            ),
            Container(
              width: width * 0.4,
              height: height * 0.15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: lightGreen),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 9, left: 11),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Белки",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: green),
                        ),
                        Text("из 1709ккал",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: green))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 9, left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                         Text("150Г", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: darkGreen)),
                        SvgPicture.asset("images/vegetables.svg")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: width * 0.5,
              height: height * 0.15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: lightGreen),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 9, left: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Белки",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: green),
                        ),
                        Text("из 1709ккал",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: green))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 9, left: 45),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                         Text("150Г", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: darkGreen)),
                        SvgPicture.asset("images/vegetables.svg")
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container blueCard(double width, String head) {
    return Container(
      width: width * 0.4,
      height: 60,
      color: lightBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  head,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14, color: green),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "0 ккал",
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 20, color: green),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: black,
                  ),
                  width: 19,
                  height: 19,
                  alignment: Alignment.center,
                  child: const Text(
                    "+",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
