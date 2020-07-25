import 'package:financial_app/my_color.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final Color color;

  const CreditCard({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      decoration: BoxDecoration(
        color: color ?? pink,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Stack(
              children: <Widget>[
                circle(color: brown),
                circle(color: lightPink, margin: EdgeInsets.only(left: 10)),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Text(
              "\$ 24,300",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "***-***-903",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Matilda",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container circle({Color color, EdgeInsets margin}) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
