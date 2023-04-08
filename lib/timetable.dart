import 'package:callories/global.dart';
import 'package:flutter/material.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Expanded(child: Container()),
                    TabBar(
                      tabs: [
                        Text(
                          "ОБЗОР",
                          style: TextStyle(
                              color: green,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "ПИТАНИЕ",
                          style: TextStyle(
                              color: green,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Column(
                children: <Widget>[Text("Lunches Page")],
              ),
              Column(
                children: <Widget>[
                  SafeArea(
                    child: ListView(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      children: [
                        ...List.generate(30, (index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 12),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            width: width * 0.9,
                            height: 74,
                            decoration: BoxDecoration(
                                color: black,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(),
                          );
                        })
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
