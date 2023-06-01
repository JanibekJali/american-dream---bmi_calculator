part of 'home_cubit.dart';

class HomeState {
  final int? weightHome;
  final int? ageHome;
  late double? sliderHeightHome;
  final GenderEnum? male ;
  final GenderEnum? female ;
  final Color? maleSelected;
  final Color? femaleSelected;



  HomeState({this.weightHome, this.ageHome, this.sliderHeightHome,this.female,this.male,this.femaleSelected,this.maleSelected});
  
  HomeState copyWith({int? weight, int? age, double? sliderHeight,GenderEnum? male ,GenderEnum? female, Color? maleSelected,Color? femaleSelected;}) {
    return HomeState(
      weightHome: weight ?? weightHome,
      ageHome: age ?? ageHome,
      sliderHeightHome: sliderHeight ?? sliderHeightHome,
      male: male ?? this.male,
      female: female ?? this.female,
      maleSelected: maleSelected ??this.maleSelected,
      femaleSelected: femaleSelected ??this.femaleSelected
    );
  }
}
