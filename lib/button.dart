import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final IconData icondata;
  final Color iconColor;
  final Color buttonColor;
  final Function() onPressed;
  const Button1({
    super.key,
    required this.icondata,
    this.iconColor = Colors.white,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: () {
        print('pressed');
        onPressed();
        print('Done');
      },
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Icon(
          icondata,
          size: 30,
          color: iconColor,
        ),
      ),
    );
  }
}
