import 'package:callories/global.dart';
import 'package:callories/widgets/smallButton.dart';
import 'package:flutter/material.dart';


Expanded Button(BuildContext context, double w, Widget link, String buttText) {
    return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>   link),
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
                  child:  Text(
                    buttText,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
        );
  }