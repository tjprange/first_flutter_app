import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;

  const TextWidget({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Center(child: Text(text, style: Theme.of(context).textTheme.headline4));
  }
}
