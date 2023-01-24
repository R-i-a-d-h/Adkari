import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
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
            ],
          ),
        ),
      ),
    );
  }
}
