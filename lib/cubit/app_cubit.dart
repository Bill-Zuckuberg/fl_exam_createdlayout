import 'package:bloc/bloc.dart';
import 'package:fl_exam_createdlayout/cubit/app_cubit_state.dart';
import 'package:fl_exam_createdlayout/model/data_model.dart';
import 'package:fl_exam_createdlayout/services/date_service.dart';

class AppCubit extends Cubit<CubitState> {
  AppCubit({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }

  final DataServices data;
  late final places;

  Future<void> getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  goHome() {
    emit(LoadedState(places));
  }
}
