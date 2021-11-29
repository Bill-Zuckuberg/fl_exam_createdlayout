import 'package:fl_exam_createdlayout/mics/colors.dart';
import 'package:fl_exam_createdlayout/wedgits/app_text.dart';
import 'package:flutter/material.dart';

class ReponsiveButtom extends StatelessWidget {
  ReponsiveButtom(
      {Key? key,
      this.isReponsive = false,
      this.height = 45,
      this.width,
      this.text = ''})
      : super(key: key);

  bool? isReponsive;
  double? width;
  double? height;
  String text;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        height: height,
        width: isReponsive == true ? double.maxFinite : width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: isReponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isReponsive == true
                ? AppText(
                    text: text,
                    color: Colors.white,
                  )
                : Container(),
            Image.asset('assets/arrowright.png')
          ],
        ),
      ),
    );
  }
}
