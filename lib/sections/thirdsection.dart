import 'package:flutter/material.dart';

import '../widget/appbutton.dart';

class ThirdSection extends StatelessWidget {
  const ThirdSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Beneficiaries',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                AppButton(
                  BackgroundColor: Colors.black,
                  BorderColor: Colors.black,
                  TextColor: Colors.white,
                  TextHint: 'Quick Transfer',
                  onPressed: () {},
                ),

              ],
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(
                image: AssetImage(
                  'lib/images/image1.png',
                ),
                height: 50,
              ),
              const Image(
                image: AssetImage(
                  'lib/images/image2.png',
                ),
                height: 50,
              ),
              const Image(
                image: AssetImage(
                  'lib/images/image3.png',
                ),
                height: 50,
              ),
              const Image(
                image: AssetImage(
                  'lib/images/image4.png',
                ),
                height: 50,
              ),
              const Image(
                image: AssetImage(
                  'lib/images/image5.png',
                ),
                height: 50,
              ),
              ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.purple),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 5),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add_circle_outline_rounded,
                      // size: 25,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'See all',
                    ),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
