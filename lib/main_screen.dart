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
        fit: StackFit.expand,
        children: [
          Positioned(
            top: height * 0.030,
            left: -1,
            right: -1,
            child: Container(
              color: Color(0xff1a1a1a),
              child: Lottie.asset(
                "assets/56811-running-server.json",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: height * 0.05,
            left: width * 0.05,
            right: width * 0.05,
            child: Center(
              child: Text(
                "CALCULATE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Nexa",
                    fontSize: height * 0.04,
                    letterSpacing: 1.5),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.55,
            minChildSize: 0.55,
            maxChildSize: 0.55,
            builder:
                (BuildContext context, ScrollController scrollController) =>
                ListView(

                  controller: scrollController,
                  children: [


                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white12,
                      ),
                      child: Column(
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
                  ],
                ),
          )
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
          color: Colors.black26,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.white12.withOpacity(0.1),
              offset: Offset(2.0, 2.0),
              blurRadius: 9.0,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.black12.withOpacity(0.2),
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
              color: Color(0xffffffff),
              fontWeight: FontWeight.w900,
              letterSpacing: 1.3,
            ),
          ),
        ),
      ),
    );
  }
}
