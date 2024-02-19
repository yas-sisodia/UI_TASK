import 'package:flutter/material.dart';

class CircularWidget extends StatelessWidget {
   CircularWidget({
    super.key, required this.path, required this.padding,
    required this.color
  });
  
  final String path;
  final double padding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      height: 40,
      width: 40,
      child:  Padding(
        padding: EdgeInsets.all(padding),
        child: Image(
          image: AssetImage(
            path,
          ),
          height: 10,
          width: 10,
          color: Colors.white,
        ),
      ),
    );
  }
}
