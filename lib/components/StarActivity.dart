import 'package:flutter/material.dart';

class StarRate extends StatelessWidget {
  final int rate;
  StarRate({this.rate});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for(int i=1; i<= rate;i++) Icon(Icons.star, color: Colors.yellow,size: 16,),
      ],
    );
  }
}
