import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  CardView({Key? key, required this.image, required this.label})
      : super(key: key);
  final AssetImage image;

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image(image: image),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 20,
            color: Colors.black,
          ),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}
