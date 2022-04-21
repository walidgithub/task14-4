import 'dart:ui';

import 'package:firstassignment/flowersitem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlowersWGridView extends StatefulWidget {
  FlowersWGridView({Key? key}) : super(key: key);

  @override
  State<FlowersWGridView> createState() => _FlowersWGridViewState();
}

class _FlowersWGridViewState extends State<FlowersWGridView> {
  final List<String> grouppath = <String>[
    'images/flower1.jpg',
    'images/flower3.jpg',
    'images/flower4.jpg',
    'images/flower5.jpg'
  ];
  final List<String> groupprice = <String>[
    '\$50.00/D',
    '\$60.00/D',
    '\$70.00/D',
    '\$80.00/D',
  ];
  final List<String> groupname = <String>[
    'Group One',
    'Group Two',
    'Group Three',
    'Group Four',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 5.0),
                    child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Good morning!",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      "Flowers items",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('images/flower4.jpg'),
                                backgroundColor: Colors.transparent,
                              )
                            ],
                          ),
                          //*******************************************************************************

                          Container(
                            height: 290.0,
                            width: 400.0,
                            child: GridView.count(
                              //column counts
                              childAspectRatio: (2 / 2.85),
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              // mainAxisSpacing: 5,
                              children: [
                                Card(
                                    color: Colors.white70,
                                    shadowColor: Colors.blueGrey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 5,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        FlowersItem(
                                                            grouppath:
                                                                grouppath[0],
                                                            groupname:
                                                                groupname[0],
                                                            groupprice:
                                                                groupprice[0]),
                                                  ));
                                            },
                                            child: Column(
                                              children: [
                                                Hero(
                                                  tag: grouppath[0],
                                                  child: Image.asset(
                                                      '${grouppath[0]}',
                                                      width: 130,
                                                      height: 130),
                                                ),
                                                Text(
                                                  "${groupname[0]}",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Flower",
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "${groupprice[0]}",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    IconButton(
                                                      icon: new Icon(
                                                        Icons.favorite,
                                                        color: Colors.red,
                                                      ),
                                                      onPressed: null,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        ])),
                                Card(
                                    color: Colors.white70,
                                    shadowColor: Colors.blueGrey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 5,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          FlowersItem(
                                                              grouppath:
                                                                  grouppath[1],
                                                              groupname:
                                                                  groupname[1],
                                                              groupprice:
                                                                  groupprice[
                                                                      1]),
                                                    ));
                                              },
                                              child: Column(children: [
                                                Hero(
                                                  tag: grouppath[1],
                                                  child: Image.asset(
                                                      '${grouppath[1]}',
                                                      width: 120,
                                                      height: 130),
                                                ),
                                                Text(
                                                  "${groupname[1]}",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Flower",
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "${groupprice[1]}",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    IconButton(
                                                      icon: new Icon(
                                                        Icons.favorite,
                                                        color: Colors.red,
                                                      ),
                                                      onPressed: null,
                                                    ),
                                                  ],
                                                ),
                                              ]))
                                        ])),
                              ],
                            ),
                          ),
                          //*******************************************************************************
                          Container(
                            height: 290.0,
                            width: 400.0,
                            child: GridView.count(
                              //column counts
                              childAspectRatio: (2 / 2.85),
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              // mainAxisSpacing: 10,
                              children: [
                                Card(
                                    color: Colors.white70,
                                    shadowColor: Colors.blueGrey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 5,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          FlowersItem(
                                                              grouppath:
                                                                  grouppath[2],
                                                              groupname:
                                                                  groupname[2],
                                                              groupprice:
                                                                  groupprice[
                                                                      2]),
                                                    ));
                                              },
                                              child: Column(children: [
                                                Hero(
                                                  tag: grouppath[2],
                                                  child: Image.asset(
                                                      '${grouppath[2]}',
                                                      width: 110,
                                                      height: 130),
                                                ),
                                                Text(
                                                  "${groupname[2]}",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Flower",
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "${groupprice[2]}",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    IconButton(
                                                      icon: new Icon(
                                                        Icons.favorite,
                                                        color: Colors.red,
                                                      ),
                                                      onPressed: null,
                                                    ),
                                                  ],
                                                ),
                                              ]))
                                        ])),
                                Card(
                                    color: Colors.white70,
                                    shadowColor: Colors.blueGrey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 5,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          FlowersItem(
                                                              grouppath:
                                                                  grouppath[3],
                                                              groupname:
                                                                  groupname[3],
                                                              groupprice:
                                                                  groupprice[
                                                                      3]),
                                                    ));
                                              },
                                              child: Column(children: [
                                                Hero(
                                                  tag: grouppath[3],
                                                  child: Image.asset(
                                                      '${grouppath[3]}',
                                                      width: 130,
                                                      height: 130),
                                                ),
                                                Text(
                                                  "${groupname[3]}",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Flower",
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "${groupprice[3]}",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    IconButton(
                                                      icon: new Icon(
                                                        Icons.favorite,
                                                        color: Colors.red,
                                                      ),
                                                      onPressed: null,
                                                    ),
                                                  ],
                                                ),
                                              ]))
                                        ])),
                              ],
                            ),
                          ),
                          // //*******************************************************************************
                        ])))));
  }
}
