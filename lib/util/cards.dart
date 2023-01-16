import 'package:flutter/material.dart';

class OverviewSingleCard extends StatelessWidget {
  final String cardTitle;
  final String cardNum;
  final cardColor;

  const OverviewSingleCard(
      {Key? key,
      required this.cardTitle,
      required this.cardNum,
      this.cardColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
            color: cardColor[100], borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Card Title

            Container(
                decoration: BoxDecoration(
                    color: cardColor, borderRadius: BorderRadius.circular(4)),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                child: Text(
                  cardTitle,
                  style: const TextStyle(color: Colors.white),
                )),

            Text(
              cardNum,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )

            //cardNum
          ],
        ),
      ),
    );
  }
}
