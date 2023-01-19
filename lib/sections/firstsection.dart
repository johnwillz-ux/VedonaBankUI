import 'package:flutter/material.dart';
import 'package:vedona/widget/transfer_money_button.dart';

import '../widget/appbutton.dart';

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

          const SizedBox(height: 7,),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '\$100,000,000.00',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              
              SizedBox(width: 7,),
              
              Icon(Icons.visibility_off_outlined, color: Colors.white,)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [

              const TransferMoneyButton(),
              const SizedBox(
                width: 10,
              ),
              AppButton(
                  BackgroundColor: Colors.transparent,
                  BorderColor: Colors.white,
                  TextColor: Colors.white,
                  TextHint: 'Add Money',
                onPressed: () {},)
            ],
          ),
        ],
      ),
    );
  }
}
