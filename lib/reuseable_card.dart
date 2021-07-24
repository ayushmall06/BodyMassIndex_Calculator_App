import 'package:flutter/material.dart';
import 'constants.dart';


class ReusableCard extends StatelessWidget {

  ReusableCard({required this.colour, required this.child, required this.onPress});

  final Color colour;
  final Widget child;
  final Function onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPress();
      },

      child: Container(
        child: child,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: colour,
        ),
      ),
    );
  }
}
