import 'package:ci_cd_calculator/utils/sizer.dart';
import 'package:flutter/material.dart';

class CalcButton extends StatefulWidget {
  const CalcButton({super.key, required this.text, required this.callBack});
  final String text;
  final Function callBack;

  @override
  State<CalcButton> createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  Color btnColor = Colors.white;
  Color equalColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.callBack();
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: widget.text == '=' ? equalColor : btnColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.black,
            width: .1,
          ),
        ),
        child: SizedBox.fromSize(
          size: Size(getProportionateScreenWidth(73),
              getProportionateScreenHeight(70)),
          child: Center(
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  color: widget.text == '=' ? Colors.white : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
