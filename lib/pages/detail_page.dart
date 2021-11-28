import 'package:fl_exam_createdlayout/mics/colors.dart';
import 'package:fl_exam_createdlayout/wedgits/app_buttons.dart';
import 'package:fl_exam_createdlayout/wedgits/app_large_text.dart';
import 'package:fl_exam_createdlayout/wedgits/app_text.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    int gettenStar = 4;
    int selectIndex = 0;

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              height: 300,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/nui2.jpeg'),
                      fit: BoxFit.cover)),
            )),
            Positioned(
                top: 280,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppLargetText(
                                  text: 'Xa lộ',
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            AppLargetText(
                              text: '\$ 250',
                              color: AppColors.mainColor,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColors.mainColor,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            AppText(
                              text: 'Đơn đọc một chặng đường',
                              color: AppColors.mainColor,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star,
                                  color: index < gettenStar
                                      ? AppColors.starColor
                                      : AppColors.textColor2,
                                );
                              }),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            AppText(
                              text: '(4.0)',
                              color: AppColors.textColor2,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AppLargetText(
                          text: "People",
                          size: 16,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        AppText(
                          text: 'Number of people in your group',
                          color: AppColors.textColor2,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => InkWell(
                                    onTap: () => setState(() {
                                      selectIndex = index;
                                      print(index);
                                    }),
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, right: 10),
                                      child: AppButton(
                                        text: (index + 1).toString(),
                                        size: 50,
                                        color: selectIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                        backgroundColor: selectIndex == index
                                            ? Colors.black
                                            : AppColors.buttonBackground,
                                        borberColor: selectIndex == index
                                            ? Colors.black
                                            : AppColors.buttonBackground,
                                      ),
                                    ),
                                  )),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
