import 'package:flutter/material.dart';

class ResumeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Row( children: [Text('Thomas Prange', style: TextStyle(fontWeight: FontWeight.bold)),],
          ),
          Row(children: [Text('tjprange@tjprange.com')],),
          Row(children: [Text('555-5555-5555')],),
          Row(children: [Text('Labrador pal extroidainre')],)          
        ],
      ),
    );
  }
}
