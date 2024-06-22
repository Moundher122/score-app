// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int bluenumber = 0;
  int rednumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bluenumber++;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    color: Colors.blue,
                    child: Center(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          bluenumber != 100
                              ? bluenumber.toString()
                              : 'Blue win',
                          style: TextStyle(
                              fontSize: 100, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      rednumber++;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    color: Colors.red,
                    child: Center(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          rednumber != 100 ? rednumber.toString() : 'Red win',
                          style: TextStyle(
                              fontSize: 100, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.5 - 100,
              left: 0,
              child: Container(
                width: 60,
                height: 200,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 9, 9, 9),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            bluenumber--;
                          });
                        },
                        icon: RotatedBox(
                          quarterTurns: 3,
                          child: Icon(
                            Icons.minimize,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            bluenumber = 0;
                            rednumber = 0;
                          });
                        },
                        icon: Icon(
                          Icons.refresh,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            rednumber--;
                          });
                        },
                        icon: RotatedBox(
                          quarterTurns: 3,
                          child: Icon(
                            Icons.minimize,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
