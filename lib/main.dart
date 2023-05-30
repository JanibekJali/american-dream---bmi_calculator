import 'package:bmi_calculator/ui/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/home_ui.dart';

void main() {
  runApp(BmiCalcculator());
}

class BmiCalcculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => HomeCubit(),
        child: HomeUi(),
      ),
    );
  }
}
// pages, ui, screen, view

