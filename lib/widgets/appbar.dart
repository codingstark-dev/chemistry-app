import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBars extends StatelessWidget {
  const AppBars({Key key}) : super(key: key);

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xff262632),
      actions: [
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 8, 0, 8),
                  child: SvgPicture.asset(
                    'assets/svg/iconsmenu3.svg',
                    alignment: Alignment.centerRight,
                    width: 35,
                    height: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff3b3c45),
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    width: MediaQuery.of(context).size.width * 2 / 3,
                    child: Padding(
                      padding:  const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: TextField(
                        textAlign: TextAlign.start,
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white60),
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white70),
                            hintText: 'Search Topics',
                            focusedBorder: InputBorder.none,
                            filled: false,
                            enabledBorder: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 12, 10),
                  child: SvgPicture.asset(
                    'assets/svg/iconsmoon.svg',
                    alignment: Alignment.centerRight,
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
