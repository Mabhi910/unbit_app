import 'package:flutter/material.dart';
import '../constants/const.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Function? onTap;
  final LinearGradient? color;
  const CustomButton({Key? key, required this.text,  this.onTap, this.color}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        widget.onTap!();
      },
      child: Container(
        width: w,
        height: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),gradient: widget.color),
        child: Center(child: Text(widget.text,style: TextStyle(
            fontFamily: Poppins,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16
        ),)),
      ),
    );
  }
}
