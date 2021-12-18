import 'package:equatable/equatable.dart';
import 'package:fl_exam_createdlayout/model/data_model.dart';

abstract class CubitState extends Equatable {}

class InitialState extends CubitState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WelcomeState extends CubitState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadingState extends CubitState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadedState extends CubitState {
  final List<DataModel> places;
  LoadedState(this.places);

  @override
  // TODO: implement props
  List<Object> get props => [places];
}
