import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {

  final Color BackgroundColor;
  final Color BorderColor;
  final Color TextColor;
  final String TextHint;
  final VoidCallback onPressed;


  const AppButton({Key? key, required this.BackgroundColor, required this.BorderColor, required this.TextColor, required this.TextHint, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          foregroundColor:
          MaterialStateProperty.all(TextColor),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
          ),
          backgroundColor:
          MaterialStateProperty.all(BackgroundColor),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.0,
                  color: BorderColor,
                ),
                borderRadius: BorderRadius.circular(6),
              ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(TextHint)],
      ),
    );
  }
}
