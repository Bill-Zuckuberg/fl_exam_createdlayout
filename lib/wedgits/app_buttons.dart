import 'package:fl_exam_createdlayout/wedgits/app_text.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final Color backgroundColor;
  final Color borberColor;
  final bool? isIcon;
  final IconData? icon;
  const AppButton(
      {Key? key,
      this.size = 60,
      this.text = '',
      this.color = Colors.white,
      this.backgroundColor = Colors.grey,
      this.borberColor = Colors.grey,
      this.isIcon = false,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(
            color: borberColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
      child: isIcon == false
          ? Center(
              child: AppText(
                text: text,
                color: color,
              ),
            )
          : Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
    );
  }
}
