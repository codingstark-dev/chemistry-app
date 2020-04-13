import 'package:chemistry/widgets/appbar.dart';
import 'package:chemistry/widgets/bottoombar.dart';
import 'package:chemistry/widgets/topicgrid.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  MainHomePage({Key key}) : super(key: key);

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBars(),
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff1d1d28),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Topics',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.left,
              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Select Your Topics To Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.left,
                ),
            ),
            Expanded(child: TopicGrid())
          ],
        ),
      ),
    );
  }
}
