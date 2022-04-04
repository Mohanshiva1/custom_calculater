import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmpsScreen extends StatefulWidget {
  const AmpsScreen({Key? key}) : super(key: key);

  @override
  State<AmpsScreen> createState() => _AmpsScreenState();
}

class _AmpsScreenState extends State<AmpsScreen> {

  TextEditingController Amps1 = TextEditingController();
  TextEditingController Amps2 = TextEditingController();

  String amps = '0';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(35),
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
                margin: EdgeInsets.symmetric(vertical: height*0.2,horizontal: width*0.05),
                child: Column(
                  children: [
                    Container(
                      height: height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        controller: Amps1,
                        keyboardType: TextInputType.numberWithOptions(),
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Enter Wattage",
                          hintStyle: TextStyle(fontFamily:"Nexa",fontSize: 13),
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
                        controller: Amps2,
                        keyboardType: TextInputType.numberWithOptions(),
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: "Enter Voltage",
                          hintStyle: TextStyle(fontFamily:"Nexa",fontSize: 13),
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

                          double sum = double.parse(Amps1.text) /
                              double.parse(Amps2.text);
                          amps = sum.toString();
                          Amps1.clear();
                          Amps2.clear();
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
                            'Get Amps',
                            style: TextStyle(
                                fontFamily:"Nexa",
                                fontSize: height * 0.015,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      'Amps : ${amps}',
                      style: TextStyle(fontFamily:"Nexa",fontWeight: FontWeight.w700,fontSize: height*0.02),
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
