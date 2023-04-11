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
            bottom: TabBar(
              labelColor: green,
              isScrollable: true,
              tabs: const [
                Tab(
                  text: "Все",
                ),
                Tab(
                  text: "Овощи",
                ),
                Tab(
                  text: "Фрукты",
                ),
                Tab(
                  text: "Напитки",
                ),
                Tab(
                  text: "Сладкое",
                ),
                Tab(
                  text: "Запрещенка",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Банан"),
                      Text("20гр"),
                      Text("20ккал"),
                      smallButton(),
                    ],
                  ),
                  Button(context, w, h, zapis(page: 1), "Записать")
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
      child: TextField(
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
