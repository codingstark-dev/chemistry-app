import 'package:chemistry/helper/route_constant.dart';
import 'package:chemistry/screen/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:chemistry/route/router.dart' as router;

void main() {
  runApp(MaterialApp(
    initialRoute: HomeViewRoute,
    onGenerateRoute: router.generateRoute,
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return OnBoarding();
  }
}
