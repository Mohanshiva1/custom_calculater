import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TotalLoad extends StatefulWidget {
  const TotalLoad({Key? key}) : super(key: key);

  @override
  State<TotalLoad> createState() => _TotalLoadState();
}

class _TotalLoadState extends State<TotalLoad> {
  TextEditingController tl1 = TextEditingController();
  TextEditingController tl2 = TextEditingController();
  TextEditingController tl3 = TextEditingController();
  TextEditingController tl4 = TextEditingController();
  String tl = '0';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(35),
            width: double.infinity,
            height: height*1.1,
            decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blueAccent,
              Colors.purple,
            ],
          ),
        ),
            child: Column(
              children: [
                Text(
                  'Total Load',
                  style: TextStyle(
                      fontFamily: "Nexa",
                      fontSize: height * 0.028,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: height*0.2,horizontal: width*0.05),
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          controller: tl1,
                          keyboardType: TextInputType.numberWithOptions(),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Enter Battery Capacity",
                            hintStyle: TextStyle(fontFamily: "Nexa",fontSize: 13),
                            filled: true,
                            fillColor: Colors.white12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        height: height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          controller: tl2,
                          keyboardType: TextInputType.numberWithOptions(),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Enter Battery Voltage",
                            hintStyle: TextStyle(fontFamily: "Nexa",fontSize: 13),
                            filled: true,
                            fillColor: Colors.white12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        height: height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          controller: tl3,
                          keyboardType: TextInputType.numberWithOptions(),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Enter Efficient Of Battery",
                            hintStyle: TextStyle(fontFamily: "Nexa",fontSize: 13),
                            filled: true,
                            fillColor: Colors.white12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        height: height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          controller: tl4,
                          keyboardType: TextInputType.numberWithOptions(),
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: "Enter Backup time",
                            hintStyle: TextStyle(fontFamily: "Nexa",fontSize: 13),
                            filled: true,
                            fillColor: Colors.white12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children : [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                double sum = double.parse(tl1.text) *
                                    double.parse(tl2.text) *
                                    double.parse(tl3.text) /
                                    double.parse(tl4.text);
                                tl = sum.toString();

                              });
                            },
                            child: Container(
                              width: width * 0.3,
                              height: height * 0.045,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.yellow.shade900,
                                    Colors.yellow.shade500
                                  ])),
                              child: Center(
                                child: Text(
                                  'Get Result',
                                  style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontSize: height * 0.015,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tl = "0".toString();
                                tl1.clear();
                                tl2.clear();
                                tl3.clear();
                                tl4.clear();
                              });
                            },
                            child: Container(
                              width: width * 0.3,
                              height: height * 0.045,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.yellow.shade900,
                                    Colors.yellow.shade500
                                  ])),
                              child: Center(
                                child: Text(
                                  'Clear',
                                  style: TextStyle(
                                      fontFamily:"Nexa",
                                      fontSize: height * 0.015,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                        ]

                      ),

                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text(
                        'Total Load : $tl',
                        style: TextStyle(fontWeight: FontWeight.w800,fontFamily: "Nexa",fontSize: height*0.02),
                      )
                    ],
                  ),
                )

              ],

            )

        ),
      ),
    );
  }
}
