import 'package:custom_calculater/home_page.dart';
import 'package:custom_calculater/homeview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Home());
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.blue
      ),
      home: HomeView(),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  TextEditingController Amps1 =  TextEditingController();
  TextEditingController Amps2 =  TextEditingController();

  TextEditingController Volt1 =  TextEditingController();
  TextEditingController Volt2 =  TextEditingController();


  TextEditingController Wats1 =  TextEditingController();
  TextEditingController Wats2 =  TextEditingController();

  TextEditingController bt1 =  TextEditingController();
  TextEditingController bt2 =  TextEditingController();
  TextEditingController bt3 =  TextEditingController();
  TextEditingController bt4 =  TextEditingController();

  TextEditingController bc1 =  TextEditingController();
  TextEditingController bc2 =  TextEditingController();
  TextEditingController bc3 =  TextEditingController();
  TextEditingController bc4 =  TextEditingController();


  TextEditingController tl1 =  TextEditingController();
  TextEditingController tl2 =  TextEditingController();
  TextEditingController tl3 =  TextEditingController();
  TextEditingController tl4 =  TextEditingController();

  String amps ='0';
  String volt ='0';
  String wats ='0';

  String bt ='0';
  String bc ='0';
  String tl = '0';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(40),
            child: Column(
              children: [

                SizedBox(height: 30,),
                TextField(
                  controller: Amps1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    hintText: 'Enter Wats',
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  controller: Amps2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    hintText: 'Enter volt',
                  ),
                ),
                RaisedButton(
                  color: Colors.yellow,
                  child: Text('Amps'),
                  onPressed: (){
                    setState((){
                      double sum = double.parse(Amps1.text) / double.parse(Amps2.text);
                      amps = sum.toString();
                    });
                  },
                ),
                Text(amps),
                SizedBox(width: 30,),

                SizedBox(height: 30,),
                TextField(
                  controller: Volt1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    hintText: 'Enter Wats',
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  controller: Volt2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    hintText: 'Enter Amps',
                  ),
                ),
                RaisedButton(
                  color: Colors.yellow,
                  child: Text('voltage'),
                  onPressed: (){
                    setState((){
                      double sum = double.parse(Volt1.text) / double.parse(Volt2.text);
                      volt = sum.toString();
                    });
                  },
                ),
                Text(volt),
                SizedBox(width: 30,),

                SizedBox(height: 30,),
                TextField(
                  controller: Wats1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Amps',
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  controller: Wats2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    hintText: 'Enter volt',
                  ),
                ),
                RaisedButton(
                  color: Colors.yellow,
                  child: Text('walt'),
                  onPressed: (){
                    setState((){
                      double sum = double.parse(Wats1.text) * double.parse(Wats2.text);
                      wats = sum.toString();
                    });
                  },
                ),
                Text(wats),
                SizedBox(height: 60,),







                Container(
                  child: Column(
                    children: [
                      TextField(
                        controller: bt1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Battery capacity',
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextField(
                        controller: bt2,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter battery voltage',
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextField(
                        controller: bt3,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter efficienty of battery',
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextField(
                        controller: bt4,

                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter total Walt',
                        ),
                      ),
                      RaisedButton(
                        color: Colors.yellow,
                        child: Text('Battery BackUp Time'),
                        onPressed: (){
                          setState((){
                            double sum = double.parse(bt1.text) * double.parse(bt2.text) * double.parse(bt3.text) / double.parse(bt4.text);
                            bt = sum.toString();
                          });
                        },
                      ),
                      Text(bt.toString())
                    ],
                  ),
                ),
                SizedBox(height: 30,),

                Container(
                  child: Column(
                    children: [
                      TextField(
                        controller: bc1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Backup time',
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextField(
                        controller: bc2,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter total load(wats)',
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextField(
                        controller: bc3,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'battery voltage',
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextField(
                        controller: bc4,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter efficianty of battery',
                        ),
                      ),
                      RaisedButton(
                        color: Colors.yellow,
                        child: Text('Battery Capacity'),
                        onPressed: (){
                          setState((){
                            double sum = double.parse(bc1.text) *
                                double.parse(bc2.text) /
                                double.parse(bc3.text) /
                                double.parse(bc4.text);
                            bc= sum.toString();
                          });
                        },
                      ),
                      Text(bc.toString())
                    ],
                  ),
                ),


                SizedBox(height: 30,),

                Container(
                  child: Column(
                    children: [
                      TextField(
                        controller: tl1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Battery Capacity',
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextField(
                        controller: tl2,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter total load(walts)',
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextField(
                        controller: tl3,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter efficianty of battery',
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextField(
                        controller: tl4,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Backup time',
                        ),
                      ),
                      RaisedButton(
                        color: Colors.yellow,
                        child: Text('Total load'),
                        onPressed: (){
                          setState((){
                            double sum = double.parse(tl1.text) *
                                double.parse(tl2.text) *
                                double.parse(tl3.text) /
                                double.parse(tl4.text);
                            tl= sum.toString();
                          });
                        },
                      ),
                      Text(tl.toString())
                    ],
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}


