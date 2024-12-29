import 'package:bloc/bloc.dart';

/// States for the TemperatureCubit
class TemperatureState {
  final double? celsius;
  final double? fahrenheit;

  TemperatureState({this.celsius, this.fahrenheit});

  TemperatureState copyWith({double? celsius, double? fahrenheit}) {
    return TemperatureState(
      celsius: celsius ?? this.celsius,
      fahrenheit: fahrenheit ?? this.fahrenheit,
    );
  }
}

class TemperatureCubit extends Cubit<TemperatureState> {
  TemperatureCubit() : super(TemperatureState());

  void convertToFahrenheit(double celsius) {
    emit(state.copyWith(celsius: celsius, fahrenheit: celsius * 9 / 5 + 32));
  }

  void convertToCelsius(double fahrenheit) {
    emit(state.copyWith(fahrenheit: fahrenheit, celsius: (fahrenheit - 32) * 5 / 9));
  }
}
