import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class VoltScreen extends StatefulWidget {
  const VoltScreen({Key? key}) : super(key: key);

  @override
  State<VoltScreen> createState() => _VoltScreenState();
}

class _VoltScreenState extends State<VoltScreen> {

  TextEditingController Volt1 = TextEditingController();
  TextEditingController Volt2 = TextEditingController();

  String volt = '0';
  String? _passwordError;

  var _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    Volt1 = TextEditingController();
    Volt2 = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    Volt1.dispose();
    Volt2.dispose();
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
            height: height*1.0,          decoration: BoxDecoration(
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
                  'Calculate Voltage',
                  style: TextStyle(
                      fontFamily: "Nexa",
                      fontSize: height * 0.028,
                      fontWeight: FontWeight.w900),
                ),

                Container(
                  child: Column(
                    children: [
                      Lottie.asset("assets/96208-carbon-calculator.json",height: height*0.4)
                    ],
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: width*0.05),

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
                            controller: Volt1,
                            keyboardType: TextInputType.numberWithOptions(),
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "Enter Wattage",
                              hintStyle: TextStyle(fontSize: 13,fontFamily: "Nexa"),
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
                            controller: Volt2,
                            keyboardType: TextInputType.numberWithOptions(),
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              hintText: "Enter Amps",
                              hintStyle: TextStyle(fontSize: 13,fontFamily: "Nexa"),
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

                              if (Volt1.text.length < 1 &&
                                  Volt2.text.length < 1) {
                                _passwordError.toString();
                              }else {
                                double sum = double.parse(Volt1.text) /
                                    double.parse(Volt2.text);
                                volt = sum.toStringAsFixed(2);
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
                                    fontSize: height * 0.015,
                                    fontWeight: FontWeight.w800,fontFamily: "Nexa"),
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
                              volt = "0".toString();
                              Volt1.clear();
                              Volt2.clear();
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
                                'Clear',
                                style: TextStyle(
                                    fontFamily:"Nexa",
                                    fontSize: height * 0.015,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height*0.02,),
                        Text(
                          'Voltage : $volt',
                          style: TextStyle(fontSize:height*0.02,fontWeight: FontWeight.w700,fontFamily: "Nexa"),
                        )
                      ],
                    ),
                  ),
                )


              ],

            )

        ),
      ),
    );
  }
}
