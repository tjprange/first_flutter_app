import 'package:flutter/material.dart';
import 'package:call_me_maybe/components/resume_widget.dart';

List<Widget> getArray() {
  List<Widget> resumes = List<Widget>();
  for (int i = 0; i < 15; i++) {
    resumes.add(new ResumeWidget());
  }
  return resumes;
}

class ResumeScreen extends StatefulWidget {
  ResumeScreen({Key key}) : super(key: key);

  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  List<Widget> resumes = getArray();

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyText2,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  resumes,              
            ),
          );
        },
      ),
    );
  }
}
