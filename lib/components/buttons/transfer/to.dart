import 'package:flutter/material.dart';

class TransferToButton extends StatelessWidget {

  TransferToButton({
    this.label,
    this.onTap,
    this.imageFileName,
    this.color,
  });

  final String label;
  final Function onTap;
  final String imageFileName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GestureDetector(
          child: Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                // border: Border.all(color: Theme.of(context).primaryColor),
                // image: DecorationImage(
                //   image: AssetImage("assets/images/$imageFileName"),
                //   fit: BoxFit.cover,
                // ),
              ),
              child: Center(
                child: Text("$label",
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                    fontSize: 22.0,
                    color: color,
                  ),
                ),
              ),
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
