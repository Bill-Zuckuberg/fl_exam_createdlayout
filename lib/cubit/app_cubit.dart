import 'package:bloc/bloc.dart';
import 'package:fl_exam_createdlayout/cubit/app_cubit_state.dart';

class AppCubit extends Cubit<CubitState> {
  AppCubit() : super(InitialState()) {
    emit(WelcomeState());
  }
}
