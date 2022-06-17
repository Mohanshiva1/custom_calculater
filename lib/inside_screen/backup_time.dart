import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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

  String? _passwordError;

  var _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    bt1 = TextEditingController();
    bt2 = TextEditingController();
    bt3 = TextEditingController();
    bt4 = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    bt1.dispose();
    bt2.dispose();
    bt3.dispose();
    bt4.dispose();
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
            padding: EdgeInsets.all(35),
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
                  'Battery Backup Time',
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
                              } else
                                return null;
                            },
                            controller: bt1,
                            keyboardType: TextInputType.numberWithOptions(),
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "Enter Battery Capacity",
                              hintStyle: TextStyle(
                                fontFamily: "Nexa",
                                fontSize: 13,
                              ),
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
                              } else
                                return null;
                            },
                            controller: bt2,
                            keyboardType: TextInputType.numberWithOptions(),
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "Enter Battery Voltage",
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
                              } else
                                return null;
                            },
                            controller: bt3,
                            keyboardType: TextInputType.numberWithOptions(),
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "Enter Efficient Of Battery",
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
                              } else
                                return null;
                            },
                            controller: bt4,
                            keyboardType: TextInputType.numberWithOptions(),
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              hintText: "Enter Total in Watts",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _formKey.currentState?.validate();

                                  if (bt1.text.length < 1 &&
                                      bt2.text.length < 1 &&
                                      bt3.text.length < 1 &&
                                      bt4.text.length < 1) {
                                    _passwordError.toString();
                                  } else {
                                    double sum = double.parse(bt1.text) *
                                        double.parse(bt2.text) *
                                        double.parse(bt3.text) /
                                        double.parse(bt4.text);
                                    bt = sum.toStringAsFixed(2);
                                  }
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
                        Text('Backup Time : $bt',
                            style: TextStyle(
                              fontFamily: "Nexa",
                              fontWeight: FontWeight.w800,
                              fontSize: height * 0.02,
                            )),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
