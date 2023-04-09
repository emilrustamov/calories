import 'package:callories/global.dart';
import 'package:callories/timetable.dart';
import 'package:callories/widgets/button.dart';
import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    bool isSelected = false;
    return Scaffold(
      backgroundColor: lightGreen,
      appBar: AppBar(
        backgroundColor: lightGreen,
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
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: w * 0.06),
                  child: const Text(
                    "Как Вас зовут",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                ),
                Container(
                  width: w * 0.9,
                  padding: const EdgeInsets.only(top: 10),
                  child: TextField(
                    maxLength: 12,
                    obscureText: false,
                    decoration: inputTextfield("Ваше имя")
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: w * 0.06),
                  child: const Text(
                    "Какой у Вас рост?",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                ),
                Container(
                  width: w * 0.9,
                  padding: const EdgeInsets.only(top: 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                    obscureText: false,
                    decoration: inputTextfield("175см"),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: w * 0.06),
                  child: const Text(
                    "Какой у Вас вес?",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                ),
                Container(
                  width: w * 0.9,
                  padding: const EdgeInsets.only(top: 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                    obscureText: false,
                    decoration: inputTextfield("75кг")
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
               Container(
                 padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                 margin: const EdgeInsets.only(left: 20, right: 20),
                 decoration: BoxDecoration(
                   color: green,
                   borderRadius: const BorderRadius.only(
                     topLeft: Radius.elliptical(30, 30),
                     bottomRight: Radius.elliptical(30, 30),
                   ),
                 ),
                 child: Container(
                   width: w* 0.13,
                   height: 50,
                   alignment: Alignment.center,
                   child: const Text(
                     "М",
                     style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.w400,
                         color: Colors.white),
                   ),
                 ),
               ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(30, 30),
                    bottomRight: Radius.elliptical(30, 30),
                  ),
                ),
                child: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    "Ж",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Button(context, w, TimeTable(), "Далее"),
        ],
      ),
    );
  }

  

  InputDecoration inputTextfield(String textlabel) {
    return InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 25),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: green,
                      ),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                    ),
                    labelText: textlabel,
                  );
  }
}
