import 'package:flutter/material.dart';

class TopRoundCard extends StatelessWidget {
  final Widget child;
  TopRoundCard({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
        ),
        child: child
    );
  }
}