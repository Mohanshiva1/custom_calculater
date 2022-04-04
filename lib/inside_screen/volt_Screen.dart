import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VoltScreen extends StatefulWidget {
  const VoltScreen({Key? key}) : super(key: key);

  @override
  State<VoltScreen> createState() => _VoltScreenState();
}

class _VoltScreenState extends State<VoltScreen> {

  TextEditingController Volt1 = TextEditingController();
  TextEditingController Volt2 = TextEditingController();

  String volt = '0';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(35),
            width: double.infinity,
            height: height*1.0,          decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.amber,
              Colors.pink,
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
                SizedBox(
                  height: height * 0.01,
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
                        ),
                        child: TextField(
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
                            double sum = double.parse(Volt1.text) /
                                double.parse(Volt2.text);
                            volt = sum.toString();
                            Volt1.clear();
                            Volt2.clear();
                          });
                        },
                        child: Container(
                          width: width * 0.4,
                          height: height * 0.045,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Colors.yellow.shade900,
                                Colors.yellow.shade500
                              ])),
                          child: Center(
                            child: Text(
                              'Get Volt',
                              style: TextStyle(
                                  fontSize: height * 0.015,
                                  fontWeight: FontWeight.w800,fontFamily: "Nexa"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Text(
                        'Voltage : $volt',
                        style: TextStyle(fontSize:height*0.02,fontWeight: FontWeight.w700,fontFamily: "Nexa"),
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
