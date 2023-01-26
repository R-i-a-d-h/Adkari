import 'package:adkari/constants.dart';
import 'package:flutter/material.dart';

class AdkarPage extends StatefulWidget {
  AdkarPage({Key? key, required this.title}) : super(key: key);
  late String title;
  @override
  State<AdkarPage> createState() => _AdkarPageState();
}

class _AdkarPageState extends State<AdkarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: kPrimaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Expanded(
                flex: 1,
                child: Text(
                  'أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20,
                    color: kSecondaryColor,
                  ),
                  textAlign: TextAlign.center,
                )),
          ),
          Expanded(
            flex: 18,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255].',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
          const SizedBox(height: 15),
          Container(
            height: 48.0,
            margin: EdgeInsets.only(left: 32.0, right: 32.0),
            child: Center(
                child: Text(
              '10/01',
              style: TextStyle(
                fontFamily: 'Digital',
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
          const SizedBox(height: 15),
          Container(
            height: 48.0,
            margin: EdgeInsets.only(left: 32.0, right: 32.0),
            child: Center(
                child: Text(
              'التالي',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            )),
            decoration: BoxDecoration(
                color: kPrimaryColor,
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
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
