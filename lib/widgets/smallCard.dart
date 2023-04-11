import 'package:callories/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Container smallCard(double w, double h, String header, String imglink) {
  return Container(
    width: w * 0.4,
    height: h * 0.15,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: lightGreen),
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: h * 0.01, left: w * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: h * 0.006),
                child: Text(
                  header,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 14, color: green),
                ),
              ),
              Text("из 1709ккал",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 10, color: green))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: h * 0.01, left: w * 0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("150Г",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: darkGreen)),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: h * 0.01),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: SvgPicture.asset(imglink),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
