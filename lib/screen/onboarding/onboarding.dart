import 'package:chemistry/main.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final introKey = GlobalKey<IntroductionScreenState>();
  int firstPage;
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset(
        'assets/png/$assetName.png',
        width: 350.0,
      ),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    List<PageViewModel> pageon = [
      PageViewModel(
        title: "Reliable To Read",
        body: "Short Definition With Their Wikis Pages",
        image: _buildImage('books'),
        decoration: PageDecoration(
          titleTextStyle:
              TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
          bodyTextStyle: bodyStyle,
          descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
          pageColor: Color(0xffffffff),
          imagePadding: EdgeInsets.zero,
        ),
      ),
      PageViewModel(
        title: "Learn as you go",
        body:
            "Download the Stockpile app and master the market with our mini-lesson.",
        image: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
          child: _buildImage('rocks'),
        ),
        decoration: PageDecoration(
          titleTextStyle:
              TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
          bodyTextStyle: bodyStyle,
          descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
          pageColor: Color(0xff309fb3),
          imagePadding: EdgeInsets.zero,
        ),
      ),
      // PageViewModel(
      //   title: "Kids and teens",
      //   body:
      //       "Kids and teens can track their stocks 24/7 and place trades that you approve.",
      //   image: _buildImage('key'),
      //   decoration: pageDecoration,
      // ),
      // PageViewModel(
      //   title: "Another title page",
      //   body: "Another beautiful body text for this example onboarding",
      //   image: _buildImage('hotels'),
      //   footer: RaisedButton(
      //     onPressed: () {
      //       introKey.currentState?.animateScroll(0);
      //     },
      //     child: const Text(
      //       'FooButton',
      //       style: TextStyle(color: Colors.white),
      //     ),
      //     color: Colors.lightBlue,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(8.0),
      //     ),
      //   ),
      //   decoration: pageDecoration,
      // ),
      PageViewModel(
        title: "Title of last page",
        bodyWidget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Click on ", style: bodyStyle),
            Icon(Icons.edit),
            Text(" to edit a post", style: bodyStyle),
          ],
        ),
        image: _buildImage('books'),
        decoration: pageDecoration,
      ),
    ];

    return IntroductionScreen(
      onChange: (value) {
        setState(() {
          firstPage = value;
        });
        // print(firstPage);
      },
      key: introKey,
      pages: pageon,
      onDone: () {
        print(
            " _____                                                                                                 _____");
        print(
            "|  1  |                                                                                               |  2  |");
        print(
            "|  H  |                                                                                               |  He |");
        print(
            "|_____|_____                                                             _____________________________|_____|");
        print(
            "|  3  |  4  |                                                           |  5  |  6  |  7  |  8  |  9  |  10 |");
        print(
            "|  Li |  Be |                                                           |  B  |  C  |  N  |  O  |  F  |  Ne |");
        print(
            "|_____|_____|                                                           |_____|_____|_____|_____|_____|_____|");
        print(
            "|  11 |  12 |                                                           |  13 |  14 |  15 |  16 |  17 |  18 |");
        print(
            "|  Na |  Mg |                                                           |  Al |  Si |  P  |  S  |  Cl |  Ar |");
        print(
            "|_____|_____|___________________________________________________________|_____|_____|_____|_____|_____|_____|");
        print(
            "|  19 |  20 |  21 |  22 |  23 |  24 |  25 |  26 |  27 |  28 |  29 |  30 |  31 |  32 |  33 |  34 |  35 |  36 |");
        print(
            "|  K  |  Ca |  Sc |  Ti |  V  |  Cr |  Mn |  Fe |  Co |  Ni |  Cu |  Zn |  Ga |  Ge |  As |  Se |  Br |  Kr |");
        print(
            "|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|");
        print(
            "|  37 |  38 |  39 |  40 |  41 |  42 |  43 |  44 |  45 |  46 |  47 |  48 |  49 |  50 |  51 |  52 |  53 |  54 |");
        print(
            "|  Rb |  Sr |  Y  |  Zr |  Nb |  Mo |  Tc |  Ru |  Rh |  Pd |  Ag |  Cd |  In |  Sn |  Sb |  Te |  I  |  Xe |");
        print(
            "|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|");
        print(
            "|  55 |  56 |  57 \\  72 |  73 |  74 |  75 |  76 |  77 |  78 |  79 |  80 |  81 |  82 |  83 |  84 |  85 |  86 |");
        print(
            "|  Cs |  Ba |  La /  Hf |  Ta |  W  |  Re |  Os |  Ir |  Pt |  Au |  Hg |  Tl |  Pb |  Bi |  Po |  At |  Rn |");
        print(
            "|_____|_____|_____\\_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|");
        print(
            "|  87 |  88 |  89 / 104 | 105 | 106 | 107 | 108 | 109 | 110 | 111 | 112 | 113 | 114 | 115 | 116 | 117 | 118 |");
        print(
            "|  Fr |  Ra |  Ac \\  Rf |  Db |  Sg |  Bh |  Hs |  Mt |  Ds |  Rg |  Cn |  Nh |  Fl |  Mc |  Lv |  Ts |  Og |");
        print(
            "|_____|_____|_____/_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|");
        print(
            "                                                                                                              ");
        print(
            "          ____________________________________________________________________________________ ");
        print(
            "          \\  58 |  59 |  60 |  61 |  62 |  63 |  64 |  65 |  66 |  67 |  68 |  69 |  70 |  71 \\");
        print(
            "          /  Ce |  Pr |  Nd |  Pm |  Sm |  Eu |  Gd |  Tb |  Dy |  Ho |  Er |  Tm |  Yb |  Lu /  ");
        print(
            "          \\_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____\\ ");
        print(
            "          /  90 |  91 |  92 |  93 |  94 |  95 |  96 |  97 |  98 |  99 | 100 | 101 | 102 | 103 /   ");
        print(
            "          \\  Th |  Pa |  U  |  Np |  Pu |  Am |  Cm |  Bk |  Cf |  Es |  Fm |  Md |  No |  Lr \\ ");
        print(
            "          /_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____/  ");
        _onIntroEnd(context);
      },
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: Text(
        'Skip',
        style: TextStyle(color: (firstPage == 0) ? Colors.black : Colors.white),
      ),
      next: Icon(Icons.arrow_forward,color: (firstPage == 0) ? Colors.black : Colors.white,),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
