import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget({
    required this.buttonText,
    this.textColor,
    this.buttonColor,
    required this.onTap,
    this.marginL,
    this.marginR,
    this.marginT,
    this.marginB,
    required this.borderRadius,
    this.buttonheight,
    Key? key,
  }) : super(key: key);
  final String buttonText;
  final VoidCallback onTap;
  Color? buttonColor;
  Color? textColor;
  double? marginL;
  double? marginR;
  double? marginT;
  double? marginB;
  double? borderRadius;
  double? buttonheight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonheight ?? 50,
      decoration: BoxDecoration(
        color: buttonColor ??
            const Color.fromARGB(
              255,
              255,
              162,
              0,
            ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            borderRadius ?? 0,
          ),
        ),
      ),
      margin: EdgeInsets.only(
        left: marginL ?? 20,
        right: marginR ?? 20,
        top: marginT ?? 0,
        bottom: marginB ?? 0,
      ),
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          onTap();
        },
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonColor ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
