import 'package:flutter/material.dart';
import 'package:vedona/util/cards.dart';

class OverviewCards extends StatefulWidget {
  OverviewCards({Key? key}) : super(key: key);

  @override
  State<OverviewCards> createState() => _OverviewCardsState();
}

class _OverviewCardsState extends State<OverviewCards> {
  List overviewCards = [
    ['Transactions', Colors.purple, '102'],
    ['Total Spent', Colors.brown, '\$200,000'],
    ['Total Income', Colors.deepOrange, '\$50,000'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(

      itemCount: overviewCards.length,
        padding: EdgeInsets.only(top: 5),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
            childAspectRatio: 1.2,),
        itemBuilder: (context, index) {
          return OverviewSingleCard(
            cardTitle: overviewCards[index][0],
            cardColor: overviewCards[index][1],
            cardNum: overviewCards[index][2],
          );
        });
  }
}
