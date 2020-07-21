import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          //Text('coolriley.jpg'),
          Padding(
              padding: EdgeInsets.all(8),
              child: Image.asset(
              'assets/images/eariley.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.scaleDown
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Text('Riley + TJ', style: Theme.of(context).textTheme.headline5),
                Text('Best buds for life!', style: Theme.of(context).textTheme.headline5),
                // Row(children: [
                //   Text('')
                // ],)
                GestureDetector(
                  onTap: () => launch('sms:5555555555'),
                  child: Text('555-555-5555')
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  GestureDetector(
                  onTap: () => launch('https://github.com/tjprange'),
                  child: Text('github', style: Theme.of(context).textTheme.headline5)
                ),
                GestureDetector(
                  onTap: () => launch('mailto:pranget@oregonstate.edu'),
                  child: Text('email', style: Theme.of(context).textTheme.headline5)
                )
                ],)
              ],
            )
            
          )
        ]
    );
  }
}

