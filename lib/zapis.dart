import 'package:callories/global.dart';
import 'package:callories/timetable.dart';
import 'package:callories/widgets/button.dart';
import 'package:callories/widgets/smallButton.dart';
import 'package:flutter/material.dart';

class zapis extends StatefulWidget {
  const zapis({super.key});

  @override
  State<zapis> createState() => _zapisState();
}

class _zapisState extends State<zapis> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Записать",
          style: TextStyle(color: black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: black,
          ),
        ),
      ),
      body: Column(
        children: [
          zapisContainer(w, "Время приема пищи", "Завтрак"),
          zapisContainer(w, "Дата", "06.04.2023"),
          Container(
            decoration: BoxDecoration(
                color: superlightGreen,
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(top: 10),
            height: 205,
            width: w * 0.9,
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Банан", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: darkGreen),),
                      const Text(
                        "2",
                        style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      const Text("x", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                      Text(
                        "(200гр)",  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: green)
                      ),
                      Text(
                        "400гр", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: darkGreen)
                      ),
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Банан", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: darkGreen),),
                      const Text(
                        "2",
                        style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      const Text("x", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                      Text(
                        "(200гр)",  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: green)
                      ),
                      Text(
                        "400гр", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: darkGreen)
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Банан", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: darkGreen),),
                      const Text(
                        "2",
                        style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      const Text("x", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                      Text(
                        "(200гр)",  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: green)
                      ),
                      Text(
                        "400гр", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: darkGreen)
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Банан", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: darkGreen),),
                      const Text(
                        "2",
                        style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      const Text("x", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                      Text(
                        "(200гр)",  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: green)
                      ),
                      Text(
                        "400гр", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: darkGreen)
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          Button(context, w, const TimeTable(), "Готово")
        ],
      ),
    );
  }

  Container zapisContainer(double w, String header, String subHeder) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: superlightGreen),
      width: w * 0.9,
      height: 64,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(header,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: green)),
                Text(
                  subHeder,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: darkGreen),
                ),
              ],
            ),
          ),
          Icon(
            Icons.expand_more_outlined,
            color: green,
          ),
        ],
      ),
    );
  }
}
