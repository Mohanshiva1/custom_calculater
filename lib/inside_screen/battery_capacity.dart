import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BatteryCapacity extends StatefulWidget {
  const BatteryCapacity({Key? key}) : super(key: key);

  @override
  State<BatteryCapacity> createState() => _BatteryCapacityState();
}

class _BatteryCapacityState extends State<BatteryCapacity> {
  TextEditingController bc1 = TextEditingController();
  TextEditingController bc2 = TextEditingController();
  TextEditingController bc3 = TextEditingController();
  TextEditingController bc4 = TextEditingController();

  String bc = '0';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(35),
            width: double.infinity,
            height: height * 1.0,
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
                  'Battery Capacity',
                  style: TextStyle(
                      fontFamily: "Nexa",
                      fontSize: height * 0.028,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: height * 0.2, horizontal: width * 0.05),
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          controller: bc1,
                          keyboardType: TextInputType.numberWithOptions(),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Enter Backup time",
                            hintStyle:
                                TextStyle(fontFamily: "Nexa", fontSize: 13),
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
                          controller: bc2,
                          keyboardType: TextInputType.numberWithOptions(),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Enter Total load(watt)",
                            hintStyle:
                                TextStyle(fontFamily: "Nexa", fontSize: 13),
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
                          controller: bc3,
                          keyboardType: TextInputType.numberWithOptions(),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Enter Battery Volt",
                            hintStyle:
                                TextStyle(fontFamily: "Nexa", fontSize: 13),
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
                          controller: bc4,
                          keyboardType: TextInputType.numberWithOptions(),
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: "Enter Efficient of Battery",
                            hintStyle:
                                TextStyle(fontFamily: "Nexa", fontSize: 13),
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
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            double sum = double.parse(bc1.text) *
                                double.parse(bc2.text) /
                                double.parse(bc3.text) /
                                double.parse(bc4.text);
                            bc = sum.toString();
                            bc1.clear();
                            bc2.clear();
                            bc3.clear();
                            bc4.clear();

                          });
                        },
                        child: Container(
                          width: width * 0.4,
                          height: height * 0.045,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Colors.yellow.shade900,
                                Colors.yellow.shade500
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Get Battery Capacity ',
                              style: TextStyle(
                                  fontFamily: "Nexa",
                                  fontSize: height * 0.008,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        'Battery capacity : $bc',
                        style: TextStyle(
                            fontFamily: "Nexa",
                            fontWeight: FontWeight.w700,
                            fontSize: height * 0.02),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
