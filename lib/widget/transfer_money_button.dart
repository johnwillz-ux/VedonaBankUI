import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vedona/widget/appbutton.dart';

class TransferMoneyButton extends StatelessWidget {
  const TransferMoneyButton({
    Key? key,
  }) : super(key: key);

  void bottomSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Positioned(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: 100,
                      height: 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black26,
                      ),
                    ),
                  )),
                  Column(
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Transfer money',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                AppButton(
                                    BackgroundColor: Colors.black,
                                    BorderColor: Colors.black,
                                    TextColor: Colors.white,
                                    TextHint: 'Choose Beneficiary',
                                    onPressed: () {})
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TextField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'Select Bank',
                                border: const OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon:
                                    const Icon(Icons.arrow_drop_down_sharp),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'Enter Account Number',
                                border: const OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Save as beneficiary',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.purple),
                                ),
                                CupertinoSwitch(
                                  activeColor: Colors.purple,
                                  onChanged: (value) {},
                                  value: true,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: ElevatedButton(
                                onPressed: null,
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 10),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.purple),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 1.0,
                                        color: Colors.purple,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [Text('Confirm receiver')],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: () => bottomSheet(context),
      BackgroundColor: Colors.white,
      BorderColor: Colors.white,
      TextColor: Colors.black,
      TextHint: 'Transfer Money',
    );
  }
}
