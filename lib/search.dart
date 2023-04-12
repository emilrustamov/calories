import 'package:callories/global.dart';
import 'package:callories/widgets/button.dart';
import 'package:callories/widgets/smallButton.dart';
import 'package:callories/zapis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: SearchBox(),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: black,
              ),
              onPressed: () {
                setState(() {});
              },
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: TabBar(
                    padding: EdgeInsets.only(left: w * 0.01),
                    isScrollable: true,
                    labelColor: Colors.white,
                    unselectedLabelColor: black,
                    indicator: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(20)),
                    tabs: [
                      Container(
                        height: h * 0.05,
                        width: w * 0.27,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text(
                          "Все",
                        ),
                      ),
                      Container(
                        height: h * 0.05,
                        width: w * 0.27,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Text(
                          "Овощи",
                        ),
                      ),
                      Container(
                        height: h * 0.05,
                        width: w * 0.27,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text(
                          "Фрукты",
                        ),
                      ),
                      Container(
                        height: h * 0.05,
                        width: w * 0.27,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text(
                          "Напитки",
                        ),
                      ),
                    ])),
          ),
          body: TabBarView(
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Банан", style: TextStyle(fontWeight:FontWeight.w500, fontSize: 18),),
                       const Text("20гр", style: TextStyle(fontWeight:FontWeight.w500, fontSize: 18),),
                        Text("20ккал", style: TextStyle(fontWeight:FontWeight.w400, fontSize: 18, color: green),),
                        smallButton(),
                      ],
                    ),
                  ),
                  ButtonReplace(context, w, h, zapis(page: 1), "Записать")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w * 0.8,
      height: 30,
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: TextField( cursorColor: black,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: black),
              borderRadius: BorderRadius.circular(30),
            ),
            contentPadding: const EdgeInsets.all(5),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: black,
                ),
                borderRadius: BorderRadius.circular(30)),
            hintText: 'Поиск'),
      ),
    );
  }
}
