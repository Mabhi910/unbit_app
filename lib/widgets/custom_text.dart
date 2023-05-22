
import 'package:flutter/material.dart';
import 'package:unbit_app/constants/const.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;

  const CustomText(
      {Key? key,
      required this.text,
      this.fontSize,
      this.color,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
          fontFamily: Poppins,
          // overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
