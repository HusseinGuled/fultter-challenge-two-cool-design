import 'package:flutter/material.dart';

class Reusable_Card extends StatelessWidget {
  Reusable_Card({
    Key? key,
    required this.image,
    required this.description,
    required this.rate,
    required this.distance,
    this.ttp1,
    this.ttp2,
    this.titleColor,
    this.leftMargin,
  }) : super(key: key);

  String description, image, rate, distance;
  Color? titleColor;
  double? leftMargin;
  String? ttp1, ttp2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: leftMargin!, top: 7),
            child: RichText(
              text: TextSpan(
                  text: ttp1,
                  style:
                      TextStyle(fontWeight: FontWeight.w300, color: titleColor),
                  children: [
                    TextSpan(
                        text: ttp2,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700))
                  ]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 15),
            height: 120,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 15),
            child: Text(
              description,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(
              distance,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: RichText(
              text: TextSpan(
                text: '★',
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 158, 222), fontSize: 26),
                children: [
                  TextSpan(
                    text: rate,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
