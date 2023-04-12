import 'package:callories/global.dart';
import 'package:callories/search.dart';
import 'package:callories/zapis.dart';
import 'package:callories/widgets/blueCard.dart';
import 'package:callories/widgets/longCard.dart';
import 'package:callories/widgets/smallButton.dart';
import 'package:callories/widgets/smallCard.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  List<GDPData>? _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80.0),
            child: SafeArea(
              child: Expanded(
                child: TabBar(
                  labelStyle: const TextStyle(
                      fontSize: 16.0, fontWeight: FontWeight.w700),
                  indicatorColor: green,
                  labelColor: green,
                  tabs: const [
                    Tab(
                      text: "ОБЗОР",
                    ),
                    Tab(
                      text: "ПИТАНИЕ",
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: h * 0.02),
            child: TabBarView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.chevron_left_outlined,
                          color: green,
                          size: 30,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.calendar_month_outlined,
                                  size: 20,
                                  color: green,
                                ),
                              ),
                              TextSpan(
                                  text: "06.04.2023",
                                  style: TextStyle(color: green)),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          color: green,
                          size: 30,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: h * 0.025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          blueCard(w, 'Прием', h),
                          blueCard(w, "Питьевой режим", h),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: h * 0.025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: w * 0.05),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: blueCard(w, "Вес", h),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "В целом",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: green,
                                    fontSize: 14),
                              ),
                              Text(
                                "0 ккал",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: darkGreen,
                                    fontSize: 20),
                              ),
                              Text(
                                "из 1709ккал",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: green,
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: w * 0.25,
                                height: h * 0.1,
                                child: Stack(
                                  children: <Widget>[
                                    SfCircularChart(
                                      series: <CircularSeries>[
                                        RadialBarSeries<GDPData, String>(
                                            useSeriesColor: true,
                                            trackOpacity: 0,
                                            dataSource: _chartData,
                                            xValueMapper: (GDPData data, _) =>
                                                data.continent,
                                            yValueMapper: (GDPData data, _) =>
                                                data.gdp,
                                            pointColorMapper:
                                                (GDPData data, _) => data.calor,
                                            dataLabelSettings:
                                                const DataLabelSettings(
                                                    labelPosition:
                                                        ChartDataLabelPosition
                                                            .inside,
                                                    isVisible: true,
                                                    textStyle: TextStyle(
                                                        fontSize: 20)),
                                            maximumValue: 100,
                                            radius: '100%',
                                            innerRadius: '70%',
                                            cornerStyle: CornerStyle.bothCurve)
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          smallCard(w, h, "Белки", "images/vegetables.svg"),
                          longCard(w, h, "Каллории", "images/un.svg")
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          longCard(w, h, "Углеводы", "images/milk.svg"),
                          smallCard(w, h, "Белки", "images/milk.svg"),
                        ],
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Search()), //page: index + 1
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: w * 0.04),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: superlightGreen),
                        width: w * 0.9,
                        height: h * 0.09,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Прием пищи ${index + 1}", style: TextStyle(color: green, fontWeight:FontWeight.w400, fontSize: 16),),
                            smallButton(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<GDPData> getChartData() {
    // ignore: non_constant_identifier_names
    final List<GDPData> ChartData = [
      GDPData('A', 78, green),
    ];
    return ChartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp, this.calor);
  final String continent;
  final int gdp;
  final Color? calor;
}
