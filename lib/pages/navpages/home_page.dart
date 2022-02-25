import 'dart:ui';
import 'package:fl_exam_createdlayout/cubit/app_cubit.dart';
import 'package:fl_exam_createdlayout/cubit/app_cubit_state.dart';
import 'package:fl_exam_createdlayout/mics/colors.dart';
import 'package:fl_exam_createdlayout/pages/detail_page.dart';
import 'package:fl_exam_createdlayout/wedgits/app_large_text.dart';
import 'package:fl_exam_createdlayout/wedgits/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    final images = {
      'nui2': 'nui2.jpeg',
      'nui3': 'nui3.jpg',
      'nui4': 'nui4.jpg',
    };

    final imageExplores = {
      'balloning': 'balloning.png',
      'climbing': 'climbing.png',
      'sailing': 'sailing.png',
      'swim': 'swim.jpg',
    };

    return Scaffold(
        body: BlocBuilder<AppCubit, CubitState>(builder: (context, state) {
      if (state is LoadedState) {
        var info = state.places;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/nui4.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargetText(
                text: 'Discover',
                size: 30,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator:
                      CircleTabIndicator(color: AppColors.mainColor, radius: 4),
                  tabs: const [
                    Tab(
                      text: 'Plances',
                    ),
                    Tab(
                      text: 'Inspiration',
                    ),
                    Tab(
                      text: 'Emotion',
                    ),
                  ]),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.only(
                left: 20,
                top: 10,
              ),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(controller: _tabController, children: [
                ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).push(DetailPage());
                          });
                        },
                        child: Stack(
                            alignment: AlignmentDirectional.bottomStart,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                width: 200,
                                height: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage('assets/' +
                                            images.values
                                                .elementAt(index)
                                                .toString()),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 20, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(child: Container()),
                                    AppLargetText(
                                        text: 'Sa lô',
                                        color: Colors.white,
                                        size: 18),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        AppText(
                                          text: 'Đường đẹp',
                                          color: Colors.white,
                                          size: 14,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ]),
                      );
                    }),
                const Text('data'),
                const Text('data'),
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargetText(
                    text: 'Exoplore more',
                    size: 16,
                  ),
                  AppText(
                    text: 'See all',
                    size: 14,
                    color: AppColors.textColor2,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 120,
              width: double.maxFinite,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // margin: const EdgeInsets.only(right: 40),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('assets/' +
                                        imageExplores.values.elementAt(index)),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: AppText(
                                text: imageExplores.keys.elementAt(index)),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        );
      } else {
        return Container();
      }
    }));
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  final double radius;
  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  final double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final circleOffset = Offset(configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);

    // TODO: implement paint
  }
}
