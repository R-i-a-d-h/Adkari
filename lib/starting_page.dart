import 'package:adkari/constants.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 5000),
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(controller!)
      ..addListener(() {
        setState(() {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) =>  AdkarPage(title: 'hi',)),
          // );
        });
      });

    repeatOnce();
  }

  void repeatOnce() async {
    await controller?.forward();
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  void dispose() {
    controller?.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('images/img.png'),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'الَّذِينَ آمَنُواْ وَتَطْمَئِنُّ قُلُوبُهُم بِذِكْرِ اللَّهِ أَلاَ بِذِكْرِ اللَّهِ تَطْمَئِنُّ الْقُلُوبُ',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20,
                    color: Color(0x25000000),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: LinearProgressIndicator(
                  value: animation?.value,
                  color: kPrimaryColor,
                  backgroundColor: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
