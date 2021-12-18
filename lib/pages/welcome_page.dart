import 'package:fl_exam_createdlayout/cubit/app_cubit.dart';
import 'package:fl_exam_createdlayout/mics/colors.dart';
import 'package:fl_exam_createdlayout/wedgits/app_large_text.dart';
import 'package:fl_exam_createdlayout/wedgits/app_text.dart';
import 'package:fl_exam_createdlayout/wedgits/reponsive_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ['nui4.jpg', 'nui3.jpg', 'nui2.jpeg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/' + images[index]))),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargetText(
                          text: 'Trips',
                        ),
                        AppText(
                          text: 'Mountain',
                          size: 30,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                'Mountain hikes give you an incredible sense of freedom along with edurance test',
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () =>
                              BlocProvider.of<AppCubit>(context).getData(),
                          child: ReponsiveButtom(
                            width: 120,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? AppColors.mainColor
                                  : AppColors.mainColor.withOpacity(0.3)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
