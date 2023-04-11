import 'package:callories/global.dart';
import 'package:callories/timetable.dart';
import 'package:callories/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:callories/widgets/accordion.dart';

class zapis extends StatefulWidget {
  int page;
  zapis({super.key, required this.page});

  @override
  State<zapis> createState() => _zapisState();
}

class _zapisState extends State<zapis> {
  int page = 0;
  @override
  void initState() {
    page = widget.page;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Page: $page");

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Записать",
          style: TextStyle(color: black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Dialog(),
      ),
      body: Column(
        children: [
          // zapisContainer(w, h, "Время приема пищи", "Завтрак"),

          // zapisContainer(w, h, "Дата", "06.04.2023"),
          const Accordion(
            title: 'Время приема пищи',
            subtitle: "Завтрак",
          ),
          const Accordion(
            title: 'Дата',
            subtitle: "06.04.2023",
          ),
          const Accordion(
            title: 'Еда',
            subtitle: "Продукты",
          ),

          // Container(
          //   decoration: BoxDecoration(
          //       color: superlightGreen,
          //       borderRadius: BorderRadius.circular(20)),
          //   margin: EdgeInsets.only(top: h * 0.01),
          //   height: h * 0.26,
          //   width: w * 0.9,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       productLine(w, h),
          //       productLine(w, h),
          //       productLine(w, h),
          //       productLine(w, h),
          //     ],
          //   ),
          // ),
          Button(context, w, h, const TimeTable(), "Готово"),
        ],
      ),
    );
  }

  // Padding productLine(double w, double h) {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(horizontal: w * 0.07),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Text(
  //           "Банан",
  //           style: TextStyle(
  //               fontWeight: FontWeight.w600, fontSize: 20, color: darkGreen),
  //         ),
  //         Container(
  //           width: w * 0.08,
  //           height: h * 0.03,
  //           padding: EdgeInsets.zero,
  //           child: TextField(
  //             cursorColor: green,
  //             textAlign: TextAlign.center,
  //             style: TextStyle(
  //                 color: green, fontWeight: FontWeight.w600, fontSize: 16),
  //             decoration: InputDecoration(
  //               contentPadding: const EdgeInsets.only(bottom: 7),
  //               enabledBorder: UnderlineInputBorder(
  //                 borderSide: BorderSide(color: green),
  //               ),
  //               focusedBorder: UnderlineInputBorder(
  //                 borderSide: BorderSide(color: green),
  //               ),
  //               labelText: "",
  //               hintText: "",
  //               counterText: "",
  //             ),
  //             keyboardType: TextInputType.number,
  //             maxLength: 2,
  //           ),
  //         ),
  //         const Text(
  //           "x",
  //           style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
  //         ),
  //         Text("(200гр)",
  //             style: TextStyle(
  //                 fontWeight: FontWeight.w400, fontSize: 16, color: green)),
  //         Text("400гр",
  //             style: TextStyle(
  //                 fontWeight: FontWeight.w600, fontSize: 20, color: darkGreen)),
  //       ],
  //     ),
  //   );
  // }
}

class Dialog extends StatelessWidget {
  const Dialog({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Вы точно хотите выйти?'),
          content:
              const Text('Если Вы выйдите, то результат записи не сохранится'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Нет'),
              child: const Text('Нет'),
            ),
            TextButton(
              onPressed: () => {
                Navigator.pop(context),
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const TimeTable()))
              },
              child: const Text('Да'),
            ),
          ],
        ),
      ),
      child: Icon(
        Icons.arrow_back,
        color: black,
      ),
    );
  }
}
//   Container zapisContainer(double w, double h, String header, String subHeder) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: w * 0.04),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20), color: superlightGreen),
//       width: w * 0.9,
//       height: h * 0.08,
//       margin: EdgeInsets.symmetric(vertical: h * 0.01, horizontal: w * 0.04),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(header,
//                     style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: green)),
//                 Text(
//                   subHeder,
  //                   style: TextStyle(
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.w600,
  //                       color: darkGreen),
//                 ),
//               ],
//             ),
//           ),
//           Icon(
//             Icons.expand_more_outlined,
//             color: green,
//           ),
//         ],
//       ),
//     );
//   }
// }