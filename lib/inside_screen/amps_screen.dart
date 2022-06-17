import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AmpsScreen extends StatefulWidget {
  const AmpsScreen({Key? key}) : super(key: key);

  @override
  State<AmpsScreen> createState() => _AmpsScreenState();
}

class _AmpsScreenState extends State<AmpsScreen> {
  TextEditingController Amps1 = TextEditingController();
  TextEditingController Amps2 = TextEditingController();

  String amps = '0';

  var _formKey = GlobalKey<FormState>();
  String? _passwordError;


  @override
  void initState() {
    Amps1 = TextEditingController();
    Amps2 = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
   Amps1.dispose();
   Amps2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.transparent,
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
                  'Calculate Amps',
                  style: TextStyle(
                      fontFamily: "Nexa",
                      fontSize: height * 0.028,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: height * 0.01,
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
                    margin: EdgeInsets.symmetric(
                        vertical: height * 0.01, horizontal: width * 0.05),
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
                            controller: Amps1,
                            keyboardType: TextInputType.numberWithOptions(),
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "Enter Wattage",
                              hintStyle:
                                  TextStyle(fontFamily: "Nexa", fontSize: 13),
                              filled: true,
                              fillColor: Colors.white12,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
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
                            controller: Amps2,
                            keyboardType: TextInputType.numberWithOptions(),
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              hintText: "Enter Voltage",
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
                          height: height * 0.05,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _formKey.currentState?.validate();

                              if (Amps1.text.length < 1 &&
                                  Amps2.text.length < 1) {
                                _passwordError.toString();
                              } else {
                                double sum = double.parse(Amps1.text) /
                                    double.parse(Amps2.text);
                                amps = sum.toStringAsFixed(2);
                              }
                            });
                          },
                          child: Container(
                            width: width * 0.4,
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
                        SizedBox(
                          height: height * 0.03,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              amps = "0".toString();
                              Amps1.clear();
                              Amps2.clear();
                            });
                          },
                          child: Container(
                            width: width * 0.4,
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
                                'Clear',
                                style: TextStyle(
                                    fontFamily: "Nexa",
                                    fontSize: height * 0.015,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          'Amps : ${amps}',
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
            )),
      ),
    );
  }
}
