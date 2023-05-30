import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(weightHome: 40, ageHome: 15));

  void weightFunction(bool weight) {
    if (weight == true) {
      emit(state.copyWith(
        weight: state.weightHome! + 1,
      ));
    }
    if (weight == false) {
      emit(state.copyWith(
        weight: state.weightHome! - 1,
      ));
    }
  }

  void ageFunction(bool age) {
    if (age == true) {
      emit(state.copyWith(
        age: state.ageHome! + 1,
      ));
    }
    if (age == false) {
      emit(state.copyWith(
        age: state.ageHome! - 1,
      ));
    }
  }
}
