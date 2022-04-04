import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackupTime extends StatefulWidget {
  const BackupTime({Key? key}) : super(key: key);

  @override
  State<BackupTime> createState() => _BackupTimeState();
}

class _BackupTimeState extends State<BackupTime> {
  TextEditingController bt1 = TextEditingController();
  TextEditingController bt2 = TextEditingController();
  TextEditingController bt3 = TextEditingController();
  TextEditingController bt4 = TextEditingController();


  String bt = '0';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: width*0.05),
            width: double.infinity,
            height: height*1.0,
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
                  'Battery Backup Time',
                  style: TextStyle(
                    fontFamily: "Nexa",
                      fontSize: height * 0.028,
                      fontWeight: FontWeight.w900),
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
                          controller: bt1,
                          keyboardType: TextInputType.numberWithOptions(),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Enter Battery Capacity",
                            hintStyle: TextStyle(fontFamily: "Nexa",fontSize: 13,),
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
                          controller: bt2,
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
                          controller: bt3,
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
                          controller: bt4,
                          keyboardType: TextInputType.numberWithOptions(),
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: "Enter Total (Watt)",
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
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                double sum = double.parse(bt1.text) *
                                    double.parse(bt2.text) *
                                    double.parse(bt3.text) /
                                    double.parse(bt4.text);
                                bt = sum.toString();

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
                                  'Get Rewsult',
                                  style: TextStyle(fontFamily: "Nexa",
                                      fontSize: height * 0.015,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bt = "0".toString();
                                bt1.clear();
                                bt2.clear();
                                bt3.clear();
                                bt4.clear();
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
                        ],
                      ),

                      SizedBox(
                        height: height * 0.03,
                      ),

                      SizedBox(height: height*0.02,),
                      Text(
                        'Backup Time : $bt',
                        style: TextStyle(fontFamily: "Nexa",fontWeight: FontWeight.w800,fontSize: height*0.02,
                      )
                      ),
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
