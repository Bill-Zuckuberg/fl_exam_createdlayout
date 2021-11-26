import 'package:fl_exam_createdlayout/mics/colors.dart';
import 'package:flutter/material.dart';

class ReponsiveButtom extends StatelessWidget {
  ReponsiveButtom(
      {Key? key, this.isReponsive = false, this.height = 45, this.width})
      : super(key: key);

  bool? isReponsive;
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset('assets/arrowright.png')],
      ),
    );
  }
}
