import 'package:flutter/material.dart';

import '../widget/AppButton.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
              image: AssetImage('lib/images/bannerBank.png'),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Current Balance',
            style: TextStyle(color: Colors.white),
          ),
          const Text(
            '\$100,000,000.00',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              AppButton(
                  BackgroundColor: Colors.white,
                  BorderColor: Colors.white,
                  TextColor: Colors.black,
                  TextHint: 'Transfer Money'),
              SizedBox(
                width: 10,
              ),
              AppButton(
                  BackgroundColor: Colors.transparent,
                  BorderColor: Colors.white,
                  TextColor: Colors.white,
                  TextHint: 'Add Money')
            ],
          ),
        ],
      ),
    );
  }
}
