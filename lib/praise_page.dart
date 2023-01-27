import 'package:adkari/constants.dart';
import 'package:adkari/counter.dart';
import 'package:flutter/material.dart';

class PraisePage extends StatefulWidget {
  const PraisePage({Key? key}) : super(key: key);

  @override
  State<PraisePage> createState() => _PraisePageState();
}

class _PraisePageState extends State<PraisePage> {
  Counter counter = Counter(counter: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 32.0, right: 32.0),
              width: double.infinity,
              height: 196,
              child: Center(
                  child: Text(
                counter.getCounter().toString(),
                style: TextStyle(
                  fontFamily: 'Digital',
                  fontSize: 48,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
            ),
            SizedBox(
              height: 64,
            ),
            GestureDetector(
              onTap: () => setState(() {
                counter.increment();
              }),
              onLongPress: () => setState(() {
                counter.resetCounter();
              }),
              child: Container(
                margin: EdgeInsets.only(left: 32.0, right: 32.0),
                width: double.infinity,
                height: 96,
                child: Center(
                    child: Text(
                  'سبحان الله والحمد لله ولا إله إلا الله والله أكبر',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                )),
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
