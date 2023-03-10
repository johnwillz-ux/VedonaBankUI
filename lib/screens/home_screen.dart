import 'package:flutter/material.dart';
import 'package:vedona/sections/fourthsection.dart';
import 'package:vedona/sections/secondsection.dart';
import '../sections/firstsection.dart';
import '../sections/thirdsection.dart';
import '../util/navicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Good morning ☀️',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 15.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Search transactions ',
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const FirstSection(),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 20),
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SecondSection(),
                      SizedBox(
                        height: 20,
                      ),
                      ThirdSection(),
                      SizedBox(
                        height: 20,
                      ),
                      FourthSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBarTheme(


        data: const NavigationBarThemeData(

          indicatorShape: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          indicatorColor: Colors.black,

          backgroundColor: Colors.white,
        ),
        child: NavigationBar(

          destinations: const [
            NavigationDestination(
                icon: Icon(
                  VedonaIcons.home,
                  size: 20, color: Colors.white,
                ),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(
                  VedonaIcons.accounts,
                  size: 20,
                ),
                label: 'Accounts'),
            NavigationDestination(
                icon: Icon(
                  VedonaIcons.cards,
                  size: 20,
                ),
                label: 'Cards'),
            NavigationDestination(
                icon: Icon(
                  VedonaIcons.payment,
                  size: 20,
                ),
                label: 'Payments'),
            NavigationDestination(
                icon: Icon(
                  VedonaIcons.profile,
                  size: 20,
                ),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
