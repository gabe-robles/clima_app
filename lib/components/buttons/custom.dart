import 'package:flutter/material.dart';

class CustomRoundButton extends StatelessWidget {

  CustomRoundButton({
    @required this.buttonTitle,
    @required this.color,
    this.buttonWidth,
    @required this.onPressed,
  });

  final String buttonTitle;
  final Color color;
  final double buttonWidth;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      elevation: 5.0,
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: buttonWidth,
        //height: 44.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              buttonTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
