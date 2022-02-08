import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  TextEditingController Amps1 = TextEditingController();
  TextEditingController Amps2 = TextEditingController();

  TextEditingController Volt1 = TextEditingController();
  TextEditingController Volt2 = TextEditingController();

  TextEditingController Wats1 = TextEditingController();
  TextEditingController Wats2 = TextEditingController();

  TextEditingController bt1 = TextEditingController();
  TextEditingController bt2 = TextEditingController();
  TextEditingController bt3 = TextEditingController();
  TextEditingController bt4 = TextEditingController();

  TextEditingController bc1 = TextEditingController();
  TextEditingController bc2 = TextEditingController();
  TextEditingController bc3 = TextEditingController();
  TextEditingController bc4 = TextEditingController();

  TextEditingController tl1 = TextEditingController();
  TextEditingController tl2 = TextEditingController();
  TextEditingController tl3 = TextEditingController();
  TextEditingController tl4 = TextEditingController();

  String amps = '0';
  String volt = '0';
  String wats = '0';

  String bt = '0';
  String bc = '0';
  String tl = '0';


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(

          margin: EdgeInsets.all(25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                child: Column(
                  children: [
                    //Amps...................................
                    Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.blueAccent,
                              Colors.purple,
                            ],
                          ),
                      ),
                      height: size.height * 0.25,
                      width: size.width * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Calculate Amps',
                            style: TextStyle(
                                fontSize: size.height * 0.013,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: Amps1,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "Enter Wattage",
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
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: Amps2,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                hintText: "Enter Voltage",
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
                            height: size.height * 0.01,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                double sum = double.parse(Amps1.text) /
                                    double.parse(Amps2.text);
                                amps = sum.toString();
                              });
                            },
                            child: Container(
                              width: size.width * 0.13,
                              height: size.height * 0.03,
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
                                      fontSize: size.height * 0.010,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            'Amps : $amps',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: size.height*0.02,),
                    //Voltage Container...........................
                    Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.amber,
                              Colors.pink,
                            ],
                          )),
                      height: size.height * 0.25,
                      width: size.width * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Calculate Volt',
                            style: TextStyle(
                                fontSize: size.height * 0.013,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: Volt1,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "Enter Wattage",
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
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: Volt2,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                hintText: "Enter Amps",
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
                            height: size.height * 0.01,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                double sum = double.parse(Volt1.text) /
                                    double.parse(Volt2.text);
                                volt = sum.toString();
                              });
                            },
                            child: Container(
                              width: size.width * 0.13,
                              height: size.height * 0.03,
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
                                      fontSize: size.height * 0.010,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            'Voltage : $volt',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: size.height*0.02,),
                    Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.amber,
                              Colors.pink,
                            ],
                          )),
                      height: size.height * 0.4,
                      width: size.width * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Battery Capacity',
                            style: TextStyle(
                                fontSize: size.height * 0.013,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: bc1,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "Enter Backup time",
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
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: bc2,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "Enter Total load(watt)",
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
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: bc3,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "Enter Battery Volt",
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
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
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
                            height: size.height * 0.01,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                double sum = double.parse(bc1.text) *
                                    double.parse(bc2.text) /
                                    double.parse(bc3.text) /
                                    double.parse(bc4.text);
                                bc = sum.toString();
                              });
                            },
                            child: Container(
                              width: size.width * 0.18,
                              height: size.height * 0.03,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.yellow.shade900,
                                    Colors.yellow.shade500
                                  ])),
                              child: Center(
                                child: Text(
                                  'Get Battery Capacity ',
                                  style: TextStyle(
                                      fontSize: size.height * 0.008,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            'Battery capacity : $bc',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    //battery capacity................................
                  ],
                ),
              ),
              SizedBox(width: size.width*0.02,),
              Container(
                child: Column(
                  children: [
                    //backup time..............................................................
                    Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.amber,
                              Colors.pink,
                            ],
                          )),
                      height: size.height * 0.4,
                      width: size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Battery Backup Time',
                            style: TextStyle(
                                fontSize: size.height * 0.013,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: bt1,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "Enter Battery Capacity",
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
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: bt2,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "Enter Battery Voltage",
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
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
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
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: bt4,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                hintText: "Enter Total (Watt)",
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
                            height: size.height * 0.01,
                          ),
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
                              width: size.width * 0.15,
                              height: size.height * 0.03,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.yellow.shade900,
                                    Colors.yellow.shade500
                                  ])),
                              child: Center(
                                child: Text(
                                  'Get Backup Time',
                                  style: TextStyle(
                                      fontSize: size.height * 0.008,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            'Backup Time : $bt',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: size.height*0.02,),

                    //volt............................................................................
                    Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.purple,
                              Colors.blue,
                            ],
                          )),
                      height: size.height * 0.23,
                      width: size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Calculate Volt',
                            style: TextStyle(
                                fontSize: size.height * 0.013,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: Volt1,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "Enter Wattage",
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
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: Volt2,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                hintText: "Enter Amps",
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
                            height: size.height * 0.01,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                double sum = double.parse(Volt1.text) /
                                    double.parse(Volt2.text);
                                volt = sum.toString();
                              });
                            },
                            child: Container(
                              width: size.width * 0.13,
                              height: size.height * 0.03,
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
                                      fontSize: size.height * 0.010,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            'Voltage : $volt',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: size.height*0.02,),
                    //total load.....................................................................
                    Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.amber,
                              Colors.pink,
                            ],
                          )),
                      height: size.height * 0.4,
                      width: size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Total Load',
                            style: TextStyle(
                                fontSize: size.height * 0.013,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: tl1,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "Enter Battery Capacity",
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
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: tl2,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "Enter Battery Voltage",
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
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: tl3,
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
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: tl4,
                              keyboardType: TextInputType.numberWithOptions(),
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                hintText: "Enter Backup time",
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
                            height: size.height * 0.01,
                          ),
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
                              width: size.width * 0.15,
                              height: size.height * 0.03,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.yellow.shade900,
                                    Colors.yellow.shade500
                                  ])),
                              child: Center(
                                child: Text(
                                  'Get Total load',
                                  style: TextStyle(
                                      fontSize: size.height * 0.008,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            'Total Load : $tl',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
