import 'package:flutter/material.dart';
import '../models/prediction.dart';
import 'package:call_me_maybe/components/text_widget.dart';

class PredictorScreen extends StatefulWidget {
  @override
  _PredictorScreenState createState() => _PredictorScreenState();
}

class _PredictorScreenState extends State<PredictorScreen> {
  final prediction = Prediction();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //custom widget 1
          TextWidget(text: 'It\'s Wayne\'s World...'),
          GestureDetector(
              onTap: () {
                setState(() {
                  prediction.generatePrediction();
                });
              },
              //custom widget 2
              child: TextWidget(text: 'Click me...')),
          //custom widget 3
          TextWidget(text: '${prediction.prediction}')          
        ],
      ),
    );
  }
}
