import 'package:flutter/material.dart';

import 'card_view.dart';
import 'constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 128,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16.0, left: 16.0, top: 16.0),
                    child: Text(
                      "أذكاري",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                    child: Text(
                      "الَّذِينَ آمَنُواْ وَتَطْمَئِنُّ قُلُوبُهُم بِذِكْرِ اللَّهِ أَلاَ بِذِكْرِ اللَّهِ تَطْمَئِنُّ الْقُلُوبُي",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        color: Colors.white.withAlpha(76),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'قائمة',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.view_list,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CardView(
                        image: AssetImage('images/sun.png'),
                        onPress: () => {},
                        label: 'اذكار الصباح',
                      ),
                      CardView(
                        image: AssetImage('images/carpet.png'),
                        onPress: () => {},
                        label: 'اذكار الصلاة',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CardView(
                        image: AssetImage('images/crescent.png'),
                        onPress: () => {},
                        label: 'اذكار المساء',
                      ),
                      CardView(
                        image: AssetImage('images/rosary.png'),
                        onPress: () => {},
                        label: 'التسبيح',
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
