import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusables/reusable_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            color: Color(0xf0C0C0C),
            border: Border.all(width: 3, color: Colors.white)),
        child: Stack(children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(21),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff7C5FD1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Row(children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Hello Daria.',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 90),
                              child: Icon(
                                FontAwesomeIcons.sliders,
                                color: Colors.black45,
                                size: 13,
                              )),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            height: 30,
                            width: 30,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://images.pexels.com/photos/803277/pexels-photo-803277.jpeg?auto=compress&cs=tinysrgb&w=600',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: SizedBox(
                            height: 35,
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'what are you looking for?',
                                hintStyle: TextStyle(color: Colors.white),
                                fillColor: Color.fromARGB(255, 154, 128, 233),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                filled: true,
                                contentPadding: EdgeInsets.only(
                                  bottom: 15,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Reusable_Card(
                      ttp1: 'Popular in',
                      ttp2: ' Warsaw',
                      titleColor: Colors.black,
                      leftMargin: 15,
                      image:
                          'https://images.pexels.com/photos/7195799/pexels-photo-7195799.jpeg?auto=compress&cs=tinysrgb&w=600',
                      distance: '1.6 km away',
                      description: 'Cute Cut - Hair Salon',
                      rate: '4.5/5',
                    ),
                    Reusable_Card(
                      ttp1: 'More',
                      titleColor: Colors.blue,
                      leftMargin: 85,
                      image:
                          'https://images.pexels.com/photos/7195804/pexels-photo-7195804.jpeg?auto=compress&cs=tinysrgb&w=600',
                      distance: '1.8 km away',
                      description: 'Easy Nails spa🍕',
                      rate: '4.8/5',
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15, top: 7),
                            child: RichText(
                              text: TextSpan(
                                  text: 'Nails.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: ' Top Services',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w300))
                                  ]),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 4, left: 15, bottom: 20),
                            height: 120,
                            width: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://images.pexels.com/photos/1643383/pexels-photo-1643383.jpeg?auto=compress&cs=tinysrgb&w=600',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 99, top: 7),
                              child: Text(
                                'More',
                                style: TextStyle(color: Colors.blue),
                              )),
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 4, left: 30),
                                height: 120,
                                width: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    'https://images.pexels.com/photos/584399/living-room-couch-interior-room-584399.jpeg?auto=compress&cs=tinysrgb&w=600',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 90, top: 110),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xff7C5FD1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: SizedBox(
                          height: 30,
                          width: 100,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 58, 57, 57),
                              hintText: 'Explore',
                              contentPadding: EdgeInsets.only(
                                bottom: 20,
                              ),
                              hintStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(Icons.calendar_month_outlined),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(Icons.favorite_outline),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(Icons.dashboard_outlined),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                top: 2,
                left: 2,
              ),
              height: 23,
              width: 23,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 215, 215, 210),
                  shape: BoxShape.circle)),
        ]),
      ),
    );
  }
}
