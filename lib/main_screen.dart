import 'package:custom_calculater/inside_screen/amps_screen.dart';
import 'package:custom_calculater/inside_screen/backup_time.dart';
import 'package:custom_calculater/inside_screen/battery_capacity.dart';
import 'package:custom_calculater/inside_screen/total_load.dart';
import 'package:custom_calculater/inside_screen/volt_Screen.dart';
import 'package:custom_calculater/inside_screen/wats_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Route _createRoute(Widget room) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => room,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.linear;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff1a1a1a),
      body: Stack(
        children: [
          Positioned(
            top: height * 0.01,
            left: width * 0.02,
            right: width * 0.02,
            child: Container(
              color: Color(0xff1a1a1a),
              child: Center(
                child: Lottie.asset("assets/96208-carbon-calculator.json",
                    height: height * 0.5),
              ),
            ),
          ),
          Positioned(
            top: height*0.45,
            left: width*0.05,
            right: width*0.05,
            child: Center(
              child: Text(
                "CALCULATE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: "Nexa,",
                    fontSize: height * 0.04,
                    letterSpacing: 1.3),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.2,
            minChildSize: 0.2,
            maxChildSize: 0.5,
            builder: (context, scrollController) =>
                Container(
                  padding: EdgeInsets.symmetric(horizontal: width*0.03,vertical: width*0.01),
              decoration: BoxDecoration(
                  color: Color(0xfff2f2f2),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        35,
                      ),
                      topLeft: Radius.circular(35))),
              child: ListView(
                controller: scrollController,
                children: [
                  rootContainer(height, width, "AMPS", AmpsScreen()),
                  rootContainer(height, width, "VOLTAGE", VoltScreen()),
                  rootContainer(height, width, "WATS", Wats()),
                  rootContainer(height, width, "TOTAL LOAD", TotalLoad()),
                  rootContainer(
                      height, width, "BATTERY BACKUP TIME", BackupTime()),
                  rootContainer(
                      height, width, "BATTERY CAPACITY", BatteryCapacity()),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector rootContainer(
      double height, double width, String text, Widget room) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.of(context).push(_createRoute(room));
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: height * 0.02, horizontal: width * 0.04),
        height: height * 0.11,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffECF0F3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(8.0, 8.0),
              blurRadius: 9.0,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 7.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: height * 0.015,
              fontFamily: "Nexa",
              fontWeight: FontWeight.w900,
              letterSpacing: 1.3,
            ),
          ),
        ),
      ),
    );
  }
}
