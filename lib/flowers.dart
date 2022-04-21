import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Flowers extends StatelessWidget {
  const Flowers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
      child: Padding(
          padding: EdgeInsets.only(top: 60.0, left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('images/flower4.jpg'),
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(children: [
                Card(
                    margin: EdgeInsets.all(10),
                    color: Colors.white70,
                    shadowColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // elevation: 25,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Image.asset('images/flower1.jpg',
                          width: 130, height: 130),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Group one",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Flower",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$20.00/D",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage('images/heart.jpg'),
                            backgroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ])),
                Card(
                    margin: EdgeInsets.all(10),
                    color: Colors.white70,
                    shadowColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // elevation: 25,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Image.asset('images/flower3.jpg',
                          width: 130, height: 130),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Group two",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Flower",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$50.00/D",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage('images/heart.jpg'),
                            backgroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ]))
              ]),
              SizedBox(
                height: 30,
              ),
              Row(children: [
                Card(
                    margin: EdgeInsets.all(10),
                    color: Colors.white70,
                    shadowColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // elevation: 25,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Image.asset('images/flower3.jpg',
                          width: 130, height: 130),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Group three",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Flower",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$100.00/D",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage('images/heart.jpg'),
                            backgroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ])),
                Card(
                    margin: EdgeInsets.all(10),
                    color: Colors.white70,
                    shadowColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // elevation: 25,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Image.asset('images/flower5.jpg',
                          width: 130, height: 130),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Group four",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Flower",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$80.00/D",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage('images/heart.jpg'),
                            backgroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ]))
              ]),
              Padding(
                padding: EdgeInsets.only(top: 20.0, left: 80.0),
                child: TextButton.icon(
                    label: Text('Add To Cart'),
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {}),
              )
            ],
          )),
    )));
  }
}
