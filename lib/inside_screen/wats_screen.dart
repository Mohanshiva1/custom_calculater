import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Wats extends StatefulWidget {
  const Wats({Key? key}) : super(key: key);

  @override
  State<Wats> createState() => _WatsState();
}

class _WatsState extends State<Wats> {

  String wats ='0';

  TextEditingController Wats1 =  TextEditingController();
  TextEditingController Wats2 =  TextEditingController();

  String? _passwordError;

  var _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    Wats1 = TextEditingController();
    Wats2 = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    Wats1.dispose();
    Wats2.dispose();
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
                  'Calculate Watts',
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
                            controller: Wats1,
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
                            controller: Wats2,
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
                              _formKey.currentState?.validate();

                              if (Wats1.text.length < 1 &&
                                  Wats2.text.length < 1) {
                                _passwordError.toString();
                              }else {
                                double sum = double.parse(Wats1.text) *
                                    double.parse(Wats2.text);
                                wats = sum.toStringAsFixed(2);
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              wats = "0".toString();
                              Wats1.clear();
                              Wats2.clear();
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
                          'Watts : ${wats}',
                          style: TextStyle(fontFamily:"Nexa",fontWeight: FontWeight.w700,fontSize: height*0.02),
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
