import 'package:callories/global.dart';
import 'package:flutter/material.dart';

Container smallButton() {
  return Container(
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
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            );
}