import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
  String? _passwordError;
  var _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    bc1 = TextEditingController();
    bc2 = TextEditingController();
    bc3 = TextEditingController();
    bc4 = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    bc1.dispose();
    bc2.dispose();
    bc3.dispose();
    bc4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          width: double.infinity,
          height: height * 1.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xfff2f2f2),
                Color(0xfff2f2f2),
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
              Container(
                child: Column(
                  children: [
                    Lottie.asset("assets/96208-carbon-calculator.json",
                        height: height * 0.4)
                  ],
                ),
              ),
              Form(
                key: _formKey,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(3.0, 3.0),
                              blurRadius: 1.10,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-1.0, -1.0),
                              blurRadius: 1.10,
                              spreadRadius: 1.0,
                            ),
                          ],
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.length < 1) {
                              return "Enter a  value";
                            }else
                              return null;
                          },
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
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(3.0, 3.0),
                              blurRadius: 1.10,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-1.0, -1.0),
                              blurRadius: 1.10,
                              spreadRadius: 1.0,
                            ),
                          ],
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.length < 1) {
                              return "Enter a  value";
                            }else
                              return null;
                          },
                          controller: bc2,
                          keyboardType: TextInputType.numberWithOptions(),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Enter Total load in watts",
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
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(3.0, 3.0),
                              blurRadius: 1.10,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-1.0, -1.0),
                              blurRadius: 1.10,
                              spreadRadius: 1.0,
                            ),
                          ],
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.length < 1) {
                              return "Enter a  value";
                            }else
                              return null;
                          },
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
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(3.0, 3.0),
                              blurRadius: 1.10,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-1.0, -1.0),
                              blurRadius: 1.10,
                              spreadRadius: 1.0,
                            ),
                          ],
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.length < 1) {
                              return "Enter a  value";
                            }else
                              return null;
                          },
                          controller: bc4,
                          keyboardType: TextInputType.numberWithOptions(),
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: "Enter Efficient of Battery",
                            hintStyle: TextStyle(fontSize: 13),
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _formKey.currentState?.validate();

                                if (bc1.text.length < 1 &&
                                    bc2.text.length < 1 &&
                                    bc3.text.length < 1 &&
                                    bc4.text.length < 1) {
                                  _passwordError.toString();
                                } else {
                                  double sum = double.parse(bc1.text) *
                                      double.parse(bc2.text) /
                                      double.parse(bc3.text) /
                                      double.parse(bc4.text);
                                  bc = sum.toStringAsFixed(2);
                                }
                              });
                            },
                            child: Container(
                              width: width * 0.3,
                              height: height * 0.045,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.yellow.shade900,
                                    Colors.yellow.shade500
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Get Result ',
                                  style: TextStyle(
                                    fontFamily: "Nexa",
                                    fontSize: height * 0.015,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bc = "0".toString();
                                bc1.clear();
                                bc2.clear();
                                bc3.clear();
                                bc4.clear();
                              });
                            },
                            child: Container(
                              width: width * 0.3,
                              height: height * 0.045,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(colors: [
                                    Colors.yellow.shade900,
                                    Colors.yellow.shade500
                                  ])),
                              child: Center(
                                child: Text(
                                  'Clear',
                                  style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontSize: height * 0.015,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
