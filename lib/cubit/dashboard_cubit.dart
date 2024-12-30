import 'package:bloc_test/cubit/area_circle_cubit.dart';
import 'package:bloc_test/cubit/arthmetic_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/simple_intrest_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/cubit/temperature_cubit.dart';
import 'package:bloc_test/view/Arithemetic_bloc_view.dart'; 
import 'package:bloc_test/view/area_of_circle_cubit_view.dart';
import 'package:bloc_test/view/arthmethic_cubit_view.dart';
import 'package:bloc_test/view/counter_bloc_view.dart';
import 'package:bloc_test/view/counter_cubit_view.dart';
import 'package:bloc_test/view/simple_interest_cubit_view.dart';
import 'package:bloc_test/view/student_bloc_view.dart';
import 'package:bloc_test/view/student_cubit_view.dart';
import 'package:bloc_test/view/temperature_cubit_view.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._simpleInterestCubit,
    this._areaOfCircleCubit,
    this._temperatureCubit, 
    this._studentCubit, 
  ) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;
  final SimpleInterestCubit _simpleInterestCubit;
  final AreaOfCircleCubit _areaOfCircleCubit;
  final TemperatureCubit _temperatureCubit; 

  void openCounterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: CounterCubitView(),
        ),
      ),
    );
  }

  void openArithmeticView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _arithmeticCubit,
          child: ArithmeticCubitView(),
        ),
      ),
    );
  }

  void openStudentView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentCubit,
          child: StudentCubitView(),
        ),
      ),
    );
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleInterestCubit,
          child: SimpleInterestCubitView(),
        ),
      ),
    );
  }

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaOfCircleCubit,
          child: AreaOfCircleCubitView(),
        ),
      ),
    );
  }

  void openTemperatureView(BuildContext context) { 
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _temperatureCubit,
          child: TemperatureCubitView(), 
        ),
      ),
    );
  }
    void openCounterblocView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CounterblocView()
        ),
      
    );
  }

  void openArithmeticblocView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ArithmeticBlocView()
        ),
      
    );
  }

  void openStudentblocView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => StudentblocView()
        ),
      
    );
  }
}
