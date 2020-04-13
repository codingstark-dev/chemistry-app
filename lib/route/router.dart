import 'package:chemistry/helper/route_constant.dart';
import 'package:chemistry/screen/mainScreen.dart';
import 'package:chemistry/screen/onboarding/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (_) => OnBoarding());
      break;
    case MainHome:
      return MaterialPageRoute(builder: (_) => MainHomePage());
      break;
    default:
      return MaterialPageRoute(builder: (_) => OnBoarding());
  }
}
