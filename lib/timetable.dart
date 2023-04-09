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
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: green,
              labelColor: green,
              tabs: [
                Tab(
                  text: "ОБЗОР",
                ),
                Tab(text: "ПИТАНИЕ"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  ListView(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    children: [Text("data"),
                      ...List.generate(5, (index) {
                        return Text("data");
                      })
                    ],
                  ),
                ],
              ),
              Icon(Icons.directions_transit, size: 350),
            ],
          ),
        ),
      ),
    );
  }
}
