import 'package:callories/global.dart';
import 'package:callories/widgets/smallButton.dart';
import 'package:flutter/material.dart';

Expanded Button(
    BuildContext context, double w, double h, Widget link, String buttText) {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.only(bottom: w * 0.05),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => link),
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
            height: h * 0.06,
            alignment: Alignment.center,
            child: Text(
              buttText,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    ),
  );
}

Expanded ButtonReplace(
    BuildContext context, double w, double h, Widget link, String buttText) {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.only(bottom: w * 0.05),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => link),
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
            height: h * 0.06,
            alignment: Alignment.center,
            child: Text(
              buttText,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    ),
  );
}
