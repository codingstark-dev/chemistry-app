import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:chemistry/helper/color.dart';

class TopicGrid extends StatelessWidget {
  const TopicGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: (2 / 2),
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        children: [
          WidgetContainer(
            text: 'Basic Chemistry',
          ),
          WidgetContainer(
            text: 'Atomic Structure',
          ),
          WidgetContainer(
            text: 'Elements Classification',
          ),
          WidgetContainer(
            text: 'States Of Matter',
          ),
          WidgetContainer(
            text: 'Chemical Bonding',
          ),
          WidgetContainer(
            text: 'Thermodynamics',
          ),
          WidgetContainer(
            text: 'Chemical Equilibrium',
          ),
          WidgetContainer(
            text: 'Ionic Equilibrium',
          ),  WidgetContainer(
            text: 'Redox Reaction',
          ),  WidgetContainer(
            text: 'Colloidal State',
          ),  WidgetContainer(
            text: 'Hydrogen',
          ),  WidgetContainer(
            text: 'The S-block Elements',
          ),WidgetContainer(
            text: 'The P-block Elements',
          ),WidgetContainer(
            text: 'Environmental Chemistry',
          ),WidgetContainer(
            text: 'Characterization Of Organic Compounds',
          ),WidgetContainer(
            text: 'General Organic Chemistry',
          ),WidgetContainer(
            text: 'Hydrocarbons',
          ),WidgetContainer(
            text: 'Nuclear Chemistry',
          ),
        ],
      ),

      // child: Row(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: ClipRRect(
      //         // clipBehavior: Clip.hardEdge,
      //         borderRadius: BorderRadius.all(Radius.circular(5)),
      //         child: Container(
      //           height: 130,
      //           width: MediaQuery.of(context).size.width / 2 - 20,
      //           color: DARK_PURPLE,
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: ClipRRect(
      //         // clipBehavior: Clip.hardEdge,
      //         borderRadius: BorderRadius.all(Radius.circular(5)),
      //         child: Container(
      //           height: 130,
      //           width: MediaQuery.of(context).size.width / 2 - 20,
      //           color: DARK_PURPLE,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

class WidgetContainer extends StatelessWidget {
  const WidgetContainer({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: DARK_PURPLE),
        clipBehavior: Clip.hardEdge,
        // margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
        height: 130,
        width: MediaQuery.of(context).size.width / 2 - 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
        // color: DARK_PURPLE,
      ),
    );
  }
}
