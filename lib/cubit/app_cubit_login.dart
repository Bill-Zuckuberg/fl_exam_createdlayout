import 'package:fl_exam_createdlayout/cubit/app_cubit.dart';
import 'package:fl_exam_createdlayout/cubit/app_cubit_state.dart';
import 'package:fl_exam_createdlayout/pages/navpages/home_page.dart';
import 'package:fl_exam_createdlayout/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogins extends StatefulWidget {
  const AppCubitLogins({Key? key}) : super(key: key);

  @override
  _AppCubitLoginsState createState() => _AppCubitLoginsState();
}

class _AppCubitLoginsState extends State<AppCubitLogins> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, CubitState>(builder: (context, state) {
        if (state is WelcomeState) {
          return const WelcomePage();
        }
        if (state is LoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is LoadedState) {
          return const HomePage();
        } else {
          return Container();
        }
      }),
    );
  }
}
