import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlowersItem extends StatefulWidget {
  final String groupprice;
  final String grouppath;
  final String groupname;

  const FlowersItem(
      {Key? key,
      required this.grouppath,
      required this.groupname,
      required this.groupprice})
      : super(key: key);

  @override
  State<FlowersItem> createState() => _FlowersItemState();
}

class _FlowersItemState extends State<FlowersItem> {
  int itemcount = 0;

  void incrementItem() {
    setState(() {
      itemcount++;
    });
  }

  void decrementItem() {
    if (itemcount != 0) {
      setState(() {
        itemcount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: widget.grouppath,
                            child: Image.asset(
                              widget.grouppath,
                              width: 400,
                              height: 400,
                            ),
                          ),
                             Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: IconButton(
                                      icon: new Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        decrementItem();
                                      },
                                    ),
                                  ),
                                  Text(
                                    "$itemcount",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.grey),
                                  ),
                                  IconButton(
                                    icon: new Icon(
                                      Icons.add,
                                      color: Colors.deepOrange,
                                    ),
                                    onPressed: () {
                                      incrementItem();
                                    },
                                  ),
                                ],
                              ),
                            ),

                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.groupname,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      widget.groupprice,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
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
                          ),
                          //*****************************************************************************************
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "A flower is the reproductive part of flowering plants. Flowers are also called the bloom or blossom of a plant. Flowers have petals."
                              " Inside the part of the flower that has petals are the parts which produce pollen and seeds. "
                              "In all plants, a flower is usually its most colourful part.",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          //*****************************************************************************************
                          Center(
                            child: Container(
                                height: 50.0,
                                width: 180.0,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0XFFE02763),
                                        Color(0XFFD23244)
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight),
                                ),
                                child: new GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'AddToCart',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      IconButton(
                                        icon: new Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                        ),
                                        onPressed: null,
                                      ),
                                    ],
                                  ),
                                )),
                          )
                        ])))));
  }
}
