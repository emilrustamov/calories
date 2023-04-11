import 'package:callories/global.dart';
import 'package:callories/widgets/smallButton.dart';
import 'package:flutter/material.dart';

Container blueCard(double w, String head, double h) {
  return Container(
    width: w * 0.4,
    height: h * 0.077,
    color: lightBlue,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: w * 0.05),
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
            smallButton(),
          ],
        )
      ],
    ),
  );
}
