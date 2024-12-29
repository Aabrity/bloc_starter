import 'package:bloc_test/cubit/area_circle_cubit.dart';
import 'package:bloc_test/cubit/arthmetic_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/dashboard_cubit.dart';
import 'package:bloc_test/cubit/simple_intrest_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/cubit/temperature_cubit.dart';
import 'package:bloc_test/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => ArithmeticCubit()),
        BlocProvider(create: (context) => StudentCubit()),
        BlocProvider(create: (context) => SimpleInterestCubit()),
        BlocProvider(create: (context) => AreaOfCircleCubit()),
        BlocProvider(create: (context) => TemperatureCubit()), 
        BlocProvider(
          create: (context) => DashboardCubit(
            context.read<CounterCubit>(),
            context.read<ArithmeticCubit>(),
            context.read<SimpleInterestCubit>(), 
            context.read<AreaOfCircleCubit>(), 
            context.read<TemperatureCubit>(), 
            context.read<StudentCubit>(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter BLoC',
        home: const DashboardView(),
      ),
    );
  }
}
