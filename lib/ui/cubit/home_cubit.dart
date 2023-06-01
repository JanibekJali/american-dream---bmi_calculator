import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/enum/gender_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(HomeState(weightHome: 40, ageHome: 15, sliderHeightHome: 120,male: GenderEnum.male,female: GenderEnum.female));

  void sliderFunction(adamBasti) {
    emit(state.copyWith(sliderHeight: state.sliderHeightHome = adamBasti));
  }
  chooseGender(GenderEnum genderUserChoose) {
    if (genderUserChoose == male) {
      emit(state.copyWith(male: AppColors.maleSelected=AppColors.activeColor
      maleSelected = AppColors.activeColor;
      femaleSelected = AppColors.inactiveColor;
    }
    if (genderUserChoose == female) {
      femaleSelected = AppColors.activeColor;
      maleSelected = AppColors.inactiveColor;
    }
    setState(() {});
  }


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
