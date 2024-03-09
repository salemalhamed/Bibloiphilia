import 'package:flutter/material.dart';

class FilterScreen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return secondstate();
  }
}

class secondstate extends State {
  int i = 0;

  List<String> items2 = [
    "كتب أدبية",
    "كتب علمية",
    "كتب دينية",
    "كتب سياسية",
    "كتب فنية",
    "كتب تاريخية",
    "كتب سيرة ذاتية",
    "كتب تعليمية",
    "كتب ترفيهية",
    "كتب أخرى",
  ];
  @override
  Widget build(BuildContext context) {
    String selectedValues = items2[i];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 27, vertical: 10),
              child: Text(
                "تصفية",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 27, vertical: 10),
                      child: Text(
                        "التصنيفات",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        child: DropdownButton<String>(
                          itemHeight: 50,
                          // The currently selected value
                          value: selectedValues,

                          // List of DropdownMenuItem objects
                          items: items2
                              .map((item2) => DropdownMenuItem<String>(
                                    value: item2,
                                    child: Text(item2),
                                  ))
                              .toList(),

                          // Callback function called when a new item is selected
                          onChanged: (String? newValue) {
                            setState(() {});
                          },

                          // Optional: Hint text displayed when no item is selected
                          hint: Text("Select an Option"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 150,
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Center(
                        child: Text(
                      "تطبيق",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    )),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color(0xFF9327d5),
                        border: Border.all(
                          width: 2,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Center(
                        child: Text(
                      "مسح",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9327d5),
                      ),
                    )),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          width: 2,
                          color: Color(0xFF9327d5),
                        ),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
