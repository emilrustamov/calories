import 'package:callories/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


 Container smallCard(
      double width, double height, String header, String imglink) {
    return Container(
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
                Padding(
                  padding: const EdgeInsets.only(bottom:5.0),
                  child: Text(
                    header,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 14, color: green),
                  ),
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
                Text("150Г",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: darkGreen)),
                SvgPicture.asset(imglink)
              ],
            ),
          )
        ],
      ),
    );
  }