part of 'home_cubit.dart';

class HomeState {
  final int? weightHome;
  final int? ageHome;

  HomeState({
    this.weightHome,
    this.ageHome,
  });
  HomeState copyWith({int? weight, int? age}) {
    return HomeState(
      weightHome: weight ?? weightHome,
      ageHome: age ?? ageHome,
    );
  }
}
