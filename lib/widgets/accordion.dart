import 'package:callories/global.dart';
import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String subtitle;

  const Accordion({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;

  @override
  Widget build(
    BuildContext context,
  ) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          color: superlightGreen, borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.01),
      child: Column(children: [
        // The title
        ListTile(
          title: Text(widget.title,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w400, color: green)),
          subtitle: Text(widget.subtitle,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w600, color: darkGreen)),
          trailing: IconButton(
            icon: Icon(_showContent
                ? Icons.expand_less_outlined
                : Icons.expand_more_outlined),
            onPressed: () {
              setState(() {
                _showContent = !_showContent;
              });
            },
          ),
        ),
        _showContent
            ? Column(
                children: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        productLine(w, h),
                        productLine(w, h),
                        productLine(w, h),
                        productLine(w, h),
                      ],
                    ),
                  ),
                ],
              )
            : Container(),
      ]),
    );
  }
}

Padding productLine(double w, double h) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Банан",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20, color: darkGreen),
        ),
        Container(
          width: w * 0.08,
          height: h * 0.025,
          padding: EdgeInsets.zero,
          child: TextField(
            cursorColor: green,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: green, fontWeight: FontWeight.w600, fontSize: 16),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 7),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: green),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: green),
              ),
              labelText: "",
              hintText: "",
              counterText: "",
            ),
            keyboardType: TextInputType.number,
            maxLength: 2,
          ),
        ),
        Text(
          "x",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 14, color: green),
        ),
        Text("(200гр)",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 16, color: green)),
        Text("400гр",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20, color: darkGreen)),
      ],
    ),
  );
}
